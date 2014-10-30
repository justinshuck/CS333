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
_StringConst_187:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_186:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_185:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_184:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_183:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_182:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_181:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_180:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_179:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_178:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_177:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_176:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_175:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_174:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_173:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_172:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_171:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_170:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_169:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_168:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_167:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_166:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_165:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_164:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_163:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_162:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_161:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_160:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_159:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_158:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_157:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_156:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_155:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_154:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_153:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_152:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_151:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_149:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_148:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_147:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_146:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_145:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_144:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_143:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_142:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_141:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_140:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_139:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_138:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_137:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_136:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_135:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_134:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
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
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_121:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_120:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_118:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_114:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_113:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_112:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_111:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_110:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_109:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_108:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
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
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_104:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_103:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_102:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_101:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_100:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_99:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_98:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_97:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_96:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_95:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_94:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_93:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_92:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_91:
	.word	32			! length
	.ascii	"Trying to Free an Invalid Thread"
	.align
_StringConst_90:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_89:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_87:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_86:
	.word	8			! length
	.ascii	"thread_9"
	.align
_StringConst_85:
	.word	8			! length
	.ascii	"thread_8"
	.align
_StringConst_84:
	.word	8			! length
	.ascii	"thread_7"
	.align
_StringConst_83:
	.word	8			! length
	.ascii	"thread_6"
	.align
_StringConst_82:
	.word	8			! length
	.ascii	"thread_5"
	.align
_StringConst_81:
	.word	8			! length
	.ascii	"thread_4"
	.align
_StringConst_80:
	.word	8			! length
	.ascii	"thread_3"
	.align
_StringConst_79:
	.word	8			! length
	.ascii	"thread_2"
	.align
_StringConst_78:
	.word	8			! length
	.ascii	"thread_1"
	.align
_StringConst_77:
	.word	8			! length
	.ascii	"thread_0"
	.align
_StringConst_76:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_75:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_74:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_73:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_72:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_67:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_66:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_65:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_64:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_63:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_62:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_61:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_60:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_59:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_58:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_57:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_56:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_55:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_54:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_53:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_51:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_49:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_47:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_46:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_45:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_44:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_42:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_41:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_40:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_39:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_38:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_37:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_36:
	.word	18			! length
	.ascii	"System Shutdown..."
	.align
_StringConst_35:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_34:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_33:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_32:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_31:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_30:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
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
	be	_Label_195
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
_Label_195:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_196
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_196
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_196
_Label_196:
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
_Label_2794:
	push	r0
	sub	r1,1,r1
	bne	_Label_2794
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_197 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_197  sizeInBytes=4
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
_Label_2795:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2795
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_201 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_202 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_201  sizeInBytes=4
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
!   _temp_203 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_204 = _temp_203 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_204 = 3  (sizeInBytes=4)
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
_Label_2796:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2796
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_206 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_207 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_206  sizeInBytes=4
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
!   _temp_208 = _function_194_IdleFunction
	set	_function_194_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_209 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_208  sizeInBytes=4
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
	.word	_Label_210
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_211
	.word	-12
	.word	4
	.word	_Label_212
	.word	-16
	.word	4
	.word	_Label_213
	.word	-20
	.word	4
	.word	_Label_214
	.word	-24
	.word	4
	.word	_Label_215
	.word	-28
	.word	4
	.word	_Label_216
	.word	-32
	.word	4
	.word	_Label_217
	.word	-36
	.word	4
	.word	_Label_218
	.word	-40
	.word	4
	.word	_Label_219
	.word	-44
	.word	4
	.word	_Label_220
	.word	-48
	.word	4
	.word	_Label_221
	.word	-52
	.word	4
	.word	_Label_222
	.word	-56
	.word	4
	.word	_Label_223
	.word	-60
	.word	4
	.word	0
_Label_210:
	.ascii	"InitializeScheduler\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_194_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2797:
	push	r0
	sub	r1,1,r1
	bne	_Label_2797
	mov	34,r13		! source line 34
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0WH",r10
_Label_224:
!	jmp	_Label_225
_Label_225:
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
!   _temp_229 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_227 else goto _Label_228
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_228
	jmp	_Label_227
_Label_227:
! THEN...
	mov	47,r13		! source line 47
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_230
_Label_228:
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
_Label_230:
! END WHILE...
	jmp	_Label_224
_Label_226:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_194_IdleFunction:
	.word	_sourceFileName
	.word	_Label_231
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_232
	.word	8
	.word	4
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	0
_Label_231:
	.ascii	"IdleFunction\0"
	.align
_Label_232:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_234:
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
_Label_2798:
	push	r0
	sub	r1,1,r1
	bne	_Label_2798
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
!   _temp_237 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_237 ) then goto _Label_236		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_236
!	jmp	_Label_235
_Label_235:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_239 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_239 [0 ] into _temp_240
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
!   _temp_238 = _temp_240		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_236:
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
!   _temp_241 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_241 = 3  (sizeInBytes=4)
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
_Label_242:
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_246 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_245  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_245 then goto _Label_244 else goto _Label_243
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_243
	jmp	_Label_244
_Label_243:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_247 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_248 = &_P_Kernel_threadManager
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
	jmp	_Label_242
_Label_244:
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_251 ) then goto _Label_250		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_250
!	jmp	_Label_249
_Label_249:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_253 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_253 [0 ] into _temp_254
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
!   _temp_252 = _temp_254		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
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
!   _temp_256 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_255 = *_temp_256  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_255) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_257 = _temp_255 + 32
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
_Label_250:
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
	.word	_Label_258
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_259
	.word	8
	.word	4
	.word	_Label_260
	.word	-16
	.word	4
	.word	_Label_261
	.word	-20
	.word	4
	.word	_Label_262
	.word	-24
	.word	4
	.word	_Label_263
	.word	-28
	.word	4
	.word	_Label_264
	.word	-32
	.word	4
	.word	_Label_265
	.word	-36
	.word	4
	.word	_Label_266
	.word	-40
	.word	4
	.word	_Label_267
	.word	-44
	.word	4
	.word	_Label_268
	.word	-48
	.word	4
	.word	_Label_269
	.word	-52
	.word	4
	.word	_Label_270
	.word	-9
	.word	1
	.word	_Label_271
	.word	-56
	.word	4
	.word	_Label_272
	.word	-60
	.word	4
	.word	_Label_273
	.word	-64
	.word	4
	.word	_Label_274
	.word	-68
	.word	4
	.word	_Label_275
	.word	-72
	.word	4
	.word	_Label_276
	.word	-76
	.word	4
	.word	_Label_277
	.word	-80
	.word	4
	.word	0
_Label_258:
	.ascii	"Run\0"
	.align
_Label_259:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_270:
	.byte	'C'
	.ascii	"_temp_245\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_276:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_277:
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
_Label_2799:
	push	r0
	sub	r1,1,r1
	bne	_Label_2799
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
!   _temp_278 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_279 = _function_193_ThreadPrintShort
	set	_function_193_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_280 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_279  sizeInBytes=4
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
	.word	_Label_281
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_282
	.word	-12
	.word	4
	.word	_Label_283
	.word	-16
	.word	4
	.word	_Label_284
	.word	-20
	.word	4
	.word	_Label_285
	.word	-24
	.word	4
	.word	0
_Label_281:
	.ascii	"PrintReadyList\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_285:
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
_Label_2800:
	push	r0
	sub	r1,1,r1
	bne	_Label_2800
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
!   _temp_286 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_286  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_288 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_287 = *_temp_288  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
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
!   _temp_289 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
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
	.word	_Label_290
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_291
	.word	-12
	.word	4
	.word	_Label_292
	.word	-16
	.word	4
	.word	_Label_293
	.word	-20
	.word	4
	.word	_Label_294
	.word	-24
	.word	4
	.word	_Label_295
	.word	-28
	.word	4
	.word	_Label_296
	.word	-32
	.word	4
	.word	0
_Label_290:
	.ascii	"ThreadStartMain\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_295:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_296:
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
_Label_2801:
	push	r0
	sub	r1,1,r1
	bne	_Label_2801
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
!   _temp_297 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_298 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
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
	.word	_Label_299
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_300
	.word	-12
	.word	4
	.word	_Label_301
	.word	-16
	.word	4
	.word	_Label_302
	.word	-20
	.word	4
	.word	0
_Label_299:
	.ascii	"ThreadFinish\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_302:
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
_Label_2802:
	push	r0
	sub	r1,1,r1
	bne	_Label_2802
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
!   _temp_303 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_305		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_305
!	jmp	_Label_304
_Label_304:
! THEN...
	mov	169,r13		! source line 169
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_306 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
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
!   _temp_308 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_307 = *_temp_308  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_305:
! CALL STATEMENT...
!   _temp_309 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
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
!   _temp_310 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_311 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
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
	.word	_Label_312
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_313
	.word	8
	.word	4
	.word	_Label_314
	.word	-12
	.word	4
	.word	_Label_315
	.word	-16
	.word	4
	.word	_Label_316
	.word	-20
	.word	4
	.word	_Label_317
	.word	-24
	.word	4
	.word	_Label_318
	.word	-28
	.word	4
	.word	_Label_319
	.word	-32
	.word	4
	.word	_Label_320
	.word	-36
	.word	4
	.word	_Label_321
	.word	-40
	.word	4
	.word	0
_Label_312:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_313:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_321:
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
_Label_2803:
	push	r0
	sub	r1,1,r1
	bne	_Label_2803
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
!   if newStatus != 1 then goto _Label_323		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_323
!	jmp	_Label_322
_Label_322:
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
	jmp	_Label_324
_Label_323:
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
_Label_324:
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
	.word	_Label_325
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_326
	.word	8
	.word	4
	.word	_Label_327
	.word	-12
	.word	4
	.word	0
_Label_325:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_326:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_327:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_193_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2804:
	push	r0
	sub	r1,1,r1
	bne	_Label_2804
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
!   if t == 0 then goto _Label_331		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_331
!   _temp_330 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_332
_Label_331:
!   _temp_330 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_332:
!   if _temp_330 then goto _Label_329 else goto _Label_328
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_328
	jmp	_Label_329
_Label_328:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_333 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
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
_Label_329:
! CALL STATEMENT...
!   _temp_334 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
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
!   _temp_336 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_335 = *_temp_336  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_337 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
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
!   _temp_346 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_345 = *_temp_346  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_340
	cmp	r1,2
	be	_Label_341
	cmp	r1,3
	be	_Label_342
	cmp	r1,4
	be	_Label_343
	cmp	r1,5
	be	_Label_344
	jmp	_Label_338
! CASE 1...
_Label_340:
! CALL STATEMENT...
!   _temp_347 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_339
! CASE 2...
_Label_341:
! CALL STATEMENT...
!   _temp_348 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_339
! CASE 3...
_Label_342:
! CALL STATEMENT...
!   _temp_349 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0BR",r10
	jmp	_Label_339
! CASE 4...
_Label_343:
! CALL STATEMENT...
!   _temp_350 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0BR",r10
	jmp	_Label_339
! CASE 5...
_Label_344:
! CALL STATEMENT...
!   _temp_351 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0BR",r10
	jmp	_Label_339
! DEFAULT CASE...
_Label_338:
! CALL STATEMENT...
!   _temp_352 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
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
_Label_339:
! CALL STATEMENT...
!   _temp_353 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_354 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_355 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
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
_RoutineDescriptor__function_193_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_356
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_357
	.word	8
	.word	4
	.word	_Label_358
	.word	-16
	.word	4
	.word	_Label_359
	.word	-20
	.word	4
	.word	_Label_360
	.word	-24
	.word	4
	.word	_Label_361
	.word	-28
	.word	4
	.word	_Label_362
	.word	-32
	.word	4
	.word	_Label_363
	.word	-36
	.word	4
	.word	_Label_364
	.word	-40
	.word	4
	.word	_Label_365
	.word	-44
	.word	4
	.word	_Label_366
	.word	-48
	.word	4
	.word	_Label_367
	.word	-52
	.word	4
	.word	_Label_368
	.word	-56
	.word	4
	.word	_Label_369
	.word	-60
	.word	4
	.word	_Label_370
	.word	-64
	.word	4
	.word	_Label_371
	.word	-68
	.word	4
	.word	_Label_372
	.word	-72
	.word	4
	.word	_Label_373
	.word	-76
	.word	4
	.word	_Label_374
	.word	-9
	.word	1
	.word	_Label_375
	.word	-80
	.word	4
	.word	0
_Label_356:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_357:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_374:
	.byte	'C'
	.ascii	"_temp_330\0"
	.align
_Label_375:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_192_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2805:
	push	r0
	sub	r1,1,r1
	bne	_Label_2805
	mov	1008,r13		! source line 1008
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_376 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
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
_RoutineDescriptor__function_192_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_377
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_378
	.word	8
	.word	4
	.word	_Label_379
	.word	-12
	.word	4
	.word	0
_Label_377:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_378:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_376\0"
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
_Label_2806:
	push	r0
	sub	r1,1,r1
	bne	_Label_2806
	mov	1018,r13		! source line 1018
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_380 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
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
	.word	_Label_381
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_382
	.word	8
	.word	4
	.word	_Label_383
	.word	-12
	.word	4
	.word	0
_Label_381:
	.ascii	"ProcessFinish\0"
	.align
_Label_382:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_380\0"
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
	mov	1029,r13		! source line 1029
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_384
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_384:
	.ascii	"InitFirstProcess\0"
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
_Label_2807:
	push	r0
	sub	r1,1,r1
	bne	_Label_2807
	mov	1545,r13		! source line 1545
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1557,r13		! source line 1557
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
	mov	1558,r13		! source line 1558
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1558,r13		! source line 1558
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
	.word	_Label_385
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_385:
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
_Label_2808:
	push	r0
	sub	r1,1,r1
	bne	_Label_2808
	mov	1563,r13		! source line 1563
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0IF",r10
!   _temp_389 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_390 = _temp_389 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_388 = *_temp_390  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_388 == 0 then goto _Label_387		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_387
!	jmp	_Label_386
_Label_386:
! THEN...
	mov	1578,r13		! source line 1578
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0SE",r10
!   _temp_392 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_393 = _temp_392 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_391 = *_temp_393  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_391) then goto _runtimeErrorNullPointer
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
_Label_387:
! RETURN STATEMENT...
	mov	1577,r13		! source line 1577
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
	.word	_Label_394
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_395
	.word	-12
	.word	4
	.word	_Label_396
	.word	-16
	.word	4
	.word	_Label_397
	.word	-20
	.word	4
	.word	_Label_398
	.word	-24
	.word	4
	.word	_Label_399
	.word	-28
	.word	4
	.word	_Label_400
	.word	-32
	.word	4
	.word	0
_Label_394:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_388\0"
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
	mov	1585,r13		! source line 1585
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
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
	.word	_Label_401
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_401:
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
_Label_2809:
	push	r0
	sub	r1,1,r1
	bne	_Label_2809
	mov	1599,r13		! source line 1599
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_402 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1606,r13		! source line 1606
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1606,r13		! source line 1606
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
	.word	_Label_403
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_404
	.word	-12
	.word	4
	.word	0
_Label_403:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_402\0"
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
_Label_2810:
	push	r0
	sub	r1,1,r1
	bne	_Label_2810
	mov	1611,r13		! source line 1611
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_405 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1618,r13		! source line 1618
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1618,r13		! source line 1618
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
	.word	_Label_406
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_407
	.word	-12
	.word	4
	.word	0
_Label_406:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_405\0"
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
_Label_2811:
	push	r0
	sub	r1,1,r1
	bne	_Label_2811
	mov	1623,r13		! source line 1623
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_408 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1630,r13		! source line 1630
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
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
	.word	_Label_409
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_410
	.word	-12
	.word	4
	.word	0
_Label_409:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_408\0"
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
_Label_2812:
	push	r0
	sub	r1,1,r1
	bne	_Label_2812
	mov	1635,r13		! source line 1635
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_411 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1642,r13		! source line 1642
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1642,r13		! source line 1642
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
	.word	_Label_412
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_413
	.word	-12
	.word	4
	.word	0
_Label_412:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_411\0"
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
_Label_2813:
	push	r0
	sub	r1,1,r1
	bne	_Label_2813
	mov	1647,r13		! source line 1647
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_414 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1654,r13		! source line 1654
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
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
	.word	_Label_415
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_416
	.word	-12
	.word	4
	.word	0
_Label_415:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_414\0"
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
_Label_2814:
	push	r0
	sub	r1,1,r1
	bne	_Label_2814
	mov	1659,r13		! source line 1659
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_417 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1666,r13		! source line 1666
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1666,r13		! source line 1666
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
	.word	_Label_418
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_419
	.word	-12
	.word	4
	.word	0
_Label_418:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_417\0"
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
_Label_2815:
	push	r0
	sub	r1,1,r1
	bne	_Label_2815
	mov	1671,r13		! source line 1671
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_420 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1678,r13		! source line 1678
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
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
	.word	_Label_421
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_422
	.word	-12
	.word	4
	.word	0
_Label_421:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_191_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2816:
	push	r0
	sub	r1,1,r1
	bne	_Label_2816
	mov	1683,r13		! source line 1683
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_423 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1689,r13		! source line 1689
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_424 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_424  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_427 = *_temp_428  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_427 == 0 then goto _Label_426		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_426
!	jmp	_Label_425
_Label_425:
! THEN...
	mov	1694,r13		! source line 1694
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_430 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_429 = *_temp_430  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_429) then goto _runtimeErrorNullPointer
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
	jmp	_Label_431
_Label_426:
! ELSE...
	mov	1696,r13		! source line 1696
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_432 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_431:
! SEND STATEMENT...
	mov	1698,r13		! source line 1698
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
	mov	1704,r13		! source line 1704
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_433
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_434
	.word	8
	.word	4
	.word	_Label_435
	.word	-12
	.word	4
	.word	_Label_436
	.word	-16
	.word	4
	.word	_Label_437
	.word	-20
	.word	4
	.word	_Label_438
	.word	-24
	.word	4
	.word	_Label_439
	.word	-28
	.word	4
	.word	_Label_440
	.word	-32
	.word	4
	.word	_Label_441
	.word	-36
	.word	4
	.word	0
_Label_433:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_434:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_423\0"
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
_Label_2817:
	push	r0
	sub	r1,1,r1
	bne	_Label_2817
	mov	1709,r13		! source line 1709
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1730,r13		! source line 1730
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2818
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_442
_Label_2818:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_442
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_442
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_456,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_456:
	jmp	_Label_448	! 1:	
	jmp	_Label_455	! 2:	
	jmp	_Label_445	! 3:	
	jmp	_Label_444	! 4:	
	jmp	_Label_447	! 5:	
	jmp	_Label_446	! 6:	
	jmp	_Label_449	! 7:	
	jmp	_Label_450	! 8:	
	jmp	_Label_451	! 9:	
	jmp	_Label_452	! 10:	
	jmp	_Label_453	! 11:	
	jmp	_Label_454	! 12:	
! CASE 4...
_Label_444:
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0RE",r10
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_457  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_457  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_445:
! CALL STATEMENT...
!   Call the function
	mov	1734,r13		! source line 1734
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1735,r13		! source line 1735
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_446:
! RETURN STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1737,r13		! source line 1737
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_458  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_458  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_447:
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_459  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_459  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_448:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
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
! CASE 7...
_Label_449:
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_460  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_460  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_450:
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_461  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_461  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_451:
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
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
	mov	1748,r13		! source line 1748
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_462  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_462  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_452:
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
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
	mov	1750,r13		! source line 1750
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_463  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_463  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_453:
! RETURN STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_464  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_464  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_454:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_455:
! CALL STATEMENT...
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_442:
! CALL STATEMENT...
!   _temp_465 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_465  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_466 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1763,r13		! source line 1763
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_443:
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
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_467
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_468
	.word	8
	.word	4
	.word	_Label_469
	.word	12
	.word	4
	.word	_Label_470
	.word	16
	.word	4
	.word	_Label_471
	.word	20
	.word	4
	.word	_Label_472
	.word	24
	.word	4
	.word	_Label_473
	.word	-12
	.word	4
	.word	_Label_474
	.word	-16
	.word	4
	.word	_Label_475
	.word	-20
	.word	4
	.word	_Label_476
	.word	-24
	.word	4
	.word	_Label_477
	.word	-28
	.word	4
	.word	_Label_478
	.word	-32
	.word	4
	.word	_Label_479
	.word	-36
	.word	4
	.word	_Label_480
	.word	-40
	.word	4
	.word	_Label_481
	.word	-44
	.word	4
	.word	_Label_482
	.word	-48
	.word	4
	.word	0
_Label_467:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_468:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_469:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_470:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_471:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_472:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_457\0"
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
	mov	1770,r13		! source line 1770
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
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
	.word	_Label_483
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_484
	.word	8
	.word	4
	.word	0
_Label_483:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_484:
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
_Label_2819:
	push	r0
	sub	r1,1,r1
	bne	_Label_2819
	mov	1776,r13		! source line 1776
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_485 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1778,r13		! source line 1778
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
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
	.word	_Label_486
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_487
	.word	-12
	.word	4
	.word	0
_Label_486:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_485\0"
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
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_488
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_488:
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
	mov	1789,r13		! source line 1789
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
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
	.word	_Label_489
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_489:
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
	mov	1796,r13		! source line 1796
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1798,r13		! source line 1798
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
	.word	_Label_490
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_491
	.word	8
	.word	4
	.word	0
_Label_490:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_491:
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
	mov	1803,r13		! source line 1803
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1805,r13		! source line 1805
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
	.word	_Label_492
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_493
	.word	8
	.word	4
	.word	0
_Label_492:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_493:
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
	mov	1810,r13		! source line 1810
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1812,r13		! source line 1812
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
	.word	_Label_494
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_495
	.word	8
	.word	4
	.word	0
_Label_494:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_495:
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
	mov	1817,r13		! source line 1817
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1819,r13		! source line 1819
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
	.word	_Label_496
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_497
	.word	8
	.word	4
	.word	0
_Label_496:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_497:
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
	mov	1824,r13		! source line 1824
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1826,r13		! source line 1826
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
	.word	_Label_498
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_499
	.word	8
	.word	4
	.word	_Label_500
	.word	12
	.word	4
	.word	_Label_501
	.word	16
	.word	4
	.word	0
_Label_498:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_499:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_500:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_501:
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
	mov	1831,r13		! source line 1831
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1833,r13		! source line 1833
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
	.word	_Label_502
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_503
	.word	8
	.word	4
	.word	_Label_504
	.word	12
	.word	4
	.word	_Label_505
	.word	16
	.word	4
	.word	0
_Label_502:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_503:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_504:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_505:
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
	mov	1838,r13		! source line 1838
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1840,r13		! source line 1840
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
	.word	_Label_506
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_507
	.word	8
	.word	4
	.word	_Label_508
	.word	12
	.word	4
	.word	0
_Label_506:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_508:
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
	mov	1845,r13		! source line 1845
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1845,r13		! source line 1845
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
	.word	_Label_509
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_510
	.word	8
	.word	4
	.word	0
_Label_509:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_190_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_2820:
	push	r0
	sub	r1,1,r1
	bne	_Label_2820
	mov	2437,r13		! source line 2437
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_511 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_511  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   _temp_512 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_512) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_514 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_514) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_513 = *_temp_514  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_512 = _temp_513  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   _temp_515 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_515) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_517 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_517) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_516 = *_temp_517  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_515 = _temp_516  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   _temp_518 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_518) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_520 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_520) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_519 = *_temp_520  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_518 = _temp_519  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_521
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_522
	.word	8
	.word	4
	.word	_Label_523
	.word	12
	.word	4
	.word	_Label_524
	.word	-16
	.word	4
	.word	_Label_525
	.word	-9
	.word	1
	.word	_Label_526
	.word	-20
	.word	4
	.word	_Label_527
	.word	-24
	.word	4
	.word	_Label_528
	.word	-10
	.word	1
	.word	_Label_529
	.word	-28
	.word	4
	.word	_Label_530
	.word	-32
	.word	4
	.word	_Label_531
	.word	-11
	.word	1
	.word	_Label_532
	.word	-36
	.word	4
	.word	_Label_533
	.word	-12
	.word	1
	.word	_Label_534
	.word	-40
	.word	4
	.word	_Label_535
	.word	-44
	.word	4
	.word	0
_Label_521:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_522:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_523:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_525:
	.byte	'C'
	.ascii	"_temp_519\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_528:
	.byte	'C'
	.ascii	"_temp_516\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_531:
	.byte	'C'
	.ascii	"_temp_513\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_533:
	.byte	'C'
	.ascii	"_temp_511\0"
	.align
_Label_534:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_535:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_189_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_printFCB,r1
	push	r1
	mov	3,r1
_Label_2821:
	push	r0
	sub	r1,1,r1
	bne	_Label_2821
	mov	2447,r13		! source line 2447
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_537 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_536 = *_temp_537  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2448,r13		! source line 2448
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2449,r13		! source line 2449
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_printFCB:
	.word	_sourceFileName
	.word	_Label_538
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_539
	.word	8
	.word	4
	.word	_Label_540
	.word	-12
	.word	4
	.word	_Label_541
	.word	-16
	.word	4
	.word	0
_Label_538:
	.ascii	"printFCB\0"
	.align
_Label_539:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_188_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_printOpen,r1
	push	r1
	mov	4,r1
_Label_2822:
	push	r0
	sub	r1,1,r1
	bne	_Label_2822
	mov	2452,r13		! source line 2452
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_542 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2453,r13		! source line 2453
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_543 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2454,r13		! source line 2454
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_544 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_544  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2455,r13		! source line 2455
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2456,r13		! source line 2456
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
	mov	2456,r13		! source line 2456
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_printOpen:
	.word	_sourceFileName
	.word	_Label_545
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_546
	.word	8
	.word	4
	.word	_Label_547
	.word	-12
	.word	4
	.word	_Label_548
	.word	-16
	.word	4
	.word	_Label_549
	.word	-20
	.word	4
	.word	0
_Label_545:
	.ascii	"printOpen\0"
	.align
_Label_546:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_550
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_550:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_551
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_551:
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
_Label_2823:
	push	r0
	sub	r1,1,r1
	bne	_Label_2823
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_553		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_553
!	jmp	_Label_552
_Label_552:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_554 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
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
_Label_553:
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
	.word	_Label_556
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_557
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_558
	.word	12
	.word	4
	.word	_Label_559
	.word	-12
	.word	4
	.word	_Label_560
	.word	-16
	.word	4
	.word	0
_Label_556:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_557:
	.ascii	"Pself\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_554\0"
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
_Label_2824:
	push	r0
	sub	r1,1,r1
	bne	_Label_2824
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
!   if count != 2147483647 then goto _Label_562		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_562
!	jmp	_Label_561
_Label_561:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_563 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
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
_Label_562:
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
!   if count > 0 then goto _Label_565		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_565
!	jmp	_Label_564
_Label_564:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_566 = &waitingThreads
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
!   _temp_567 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_567 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_568 = &_P_Kernel_readyList
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
_Label_565:
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
	.word	_Label_569
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_570
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_571
	.word	-12
	.word	4
	.word	_Label_572
	.word	-16
	.word	4
	.word	_Label_573
	.word	-20
	.word	4
	.word	_Label_574
	.word	-24
	.word	4
	.word	_Label_575
	.word	-28
	.word	4
	.word	_Label_576
	.word	-32
	.word	4
	.word	0
_Label_569:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_570:
	.ascii	"Pself\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_575:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_576:
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
_Label_2825:
	push	r0
	sub	r1,1,r1
	bne	_Label_2825
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
!   if count != -2147483648 then goto _Label_578		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_578
!	jmp	_Label_577
_Label_577:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_579 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_579  sizeInBytes=4
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
_Label_578:
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
!   if count >= 0 then goto _Label_581		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_581
!	jmp	_Label_580
_Label_580:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_582 = &waitingThreads
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
_Label_581:
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
	.word	_Label_583
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_585
	.word	-12
	.word	4
	.word	_Label_586
	.word	-16
	.word	4
	.word	_Label_587
	.word	-20
	.word	4
	.word	0
_Label_583:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_584:
	.ascii	"Pself\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_587:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_588
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_588:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_589
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_589:
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
_Label_2826:
	push	r0
	sub	r1,1,r1
	bne	_Label_2826
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
	.word	_Label_591
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_593
	.word	-12
	.word	4
	.word	0
_Label_591:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_592:
	.ascii	"Pself\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_590\0"
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
_Label_2827:
	push	r0
	sub	r1,1,r1
	bne	_Label_2827
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_595		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_595
!	jmp	_Label_594
_Label_594:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_596 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=4
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
_Label_595:
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
!   if heldBy == 0 then goto _Label_600		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_600
!   _temp_599 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_601
_Label_600:
!   _temp_599 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_601:
!   if _temp_599 then goto _Label_598 else goto _Label_597
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_597
	jmp	_Label_598
_Label_597:
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
	jmp	_Label_602
_Label_598:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_603 = &waitingThreads
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
_Label_602:
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
	.word	_Label_604
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_605
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_606
	.word	-16
	.word	4
	.word	_Label_607
	.word	-9
	.word	1
	.word	_Label_608
	.word	-20
	.word	4
	.word	_Label_609
	.word	-24
	.word	4
	.word	0
_Label_604:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_605:
	.ascii	"Pself\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_607:
	.byte	'C'
	.ascii	"_temp_599\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_609:
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
_Label_2828:
	push	r0
	sub	r1,1,r1
	bne	_Label_2828
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_611		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_611
!	jmp	_Label_610
_Label_610:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_612 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_612  sizeInBytes=4
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
_Label_611:
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
!   _temp_613 = &waitingThreads
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
!   if t == 0 then goto _Label_615		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_615
!	jmp	_Label_614
_Label_614:
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
!   _temp_616 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_616 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_617 = &_P_Kernel_readyList
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
	jmp	_Label_618
_Label_615:
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
_Label_618:
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
	.word	_Label_619
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_621
	.word	-12
	.word	4
	.word	_Label_622
	.word	-16
	.word	4
	.word	_Label_623
	.word	-20
	.word	4
	.word	_Label_624
	.word	-24
	.word	4
	.word	_Label_625
	.word	-28
	.word	4
	.word	_Label_626
	.word	-32
	.word	4
	.word	0
_Label_619:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_620:
	.ascii	"Pself\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_625:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_626:
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
_Label_2829:
	push	r0
	sub	r1,1,r1
	bne	_Label_2829
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_629		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_629
!	jmp	_Label_628
_Label_628:
!   _temp_627 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_630
_Label_629:
!   _temp_627 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_630:
!   ReturnResult: _temp_627  (sizeInBytes=1)
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
	.word	_Label_631
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_633
	.word	-9
	.word	1
	.word	0
_Label_631:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_632:
	.ascii	"Pself\0"
	.align
_Label_633:
	.byte	'C'
	.ascii	"_temp_627\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_634
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_634:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_635
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_635:
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
_Label_2830:
	push	r0
	sub	r1,1,r1
	bne	_Label_2830
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
	.word	_Label_637
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_639
	.word	-12
	.word	4
	.word	0
_Label_637:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_638:
	.ascii	"Pself\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_636\0"
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
_Label_2831:
	push	r0
	sub	r1,1,r1
	bne	_Label_2831
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
!   Retrieve Result: targetName=_temp_642  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_642 then goto _Label_641 else goto _Label_640
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_640
	jmp	_Label_641
_Label_640:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_643 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
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
_Label_641:
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
!   _temp_644 = &waitingThreads
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
	.word	_Label_645
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_647
	.word	12
	.word	4
	.word	_Label_648
	.word	-16
	.word	4
	.word	_Label_649
	.word	-20
	.word	4
	.word	_Label_650
	.word	-9
	.word	1
	.word	_Label_651
	.word	-24
	.word	4
	.word	0
_Label_645:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_646:
	.ascii	"Pself\0"
	.align
_Label_647:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_650:
	.byte	'C'
	.ascii	"_temp_642\0"
	.align
_Label_651:
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
_Label_2832:
	push	r0
	sub	r1,1,r1
	bne	_Label_2832
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
!   Retrieve Result: targetName=_temp_654  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_654 then goto _Label_653 else goto _Label_652
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_652
	jmp	_Label_653
_Label_652:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_655 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_655  sizeInBytes=4
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
_Label_653:
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
!   _temp_656 = &waitingThreads
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
!   if t == 0 then goto _Label_658		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_658
!	jmp	_Label_657
_Label_657:
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
!   _temp_659 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_659 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_660 = &_P_Kernel_readyList
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
_Label_658:
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
	.word	_Label_661
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_663
	.word	12
	.word	4
	.word	_Label_664
	.word	-16
	.word	4
	.word	_Label_665
	.word	-20
	.word	4
	.word	_Label_666
	.word	-24
	.word	4
	.word	_Label_667
	.word	-28
	.word	4
	.word	_Label_668
	.word	-9
	.word	1
	.word	_Label_669
	.word	-32
	.word	4
	.word	_Label_670
	.word	-36
	.word	4
	.word	0
_Label_661:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_662:
	.ascii	"Pself\0"
	.align
_Label_663:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_668:
	.byte	'C'
	.ascii	"_temp_654\0"
	.align
_Label_669:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_670:
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
_Label_2833:
	push	r0
	sub	r1,1,r1
	bne	_Label_2833
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
!   Retrieve Result: targetName=_temp_673  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_673 then goto _Label_672 else goto _Label_671
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_671
	jmp	_Label_672
_Label_671:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_674 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_674  sizeInBytes=4
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
_Label_672:
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
_Label_675:
!	jmp	_Label_676
_Label_676:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_678 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_679
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_679
	jmp	_Label_680
_Label_679:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_677
! END IF...
_Label_680:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_681 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_681 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_682 = &_P_Kernel_readyList
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
	jmp	_Label_675
_Label_677:
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
	.word	_Label_683
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_684
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_685
	.word	12
	.word	4
	.word	_Label_686
	.word	-16
	.word	4
	.word	_Label_687
	.word	-20
	.word	4
	.word	_Label_688
	.word	-24
	.word	4
	.word	_Label_689
	.word	-28
	.word	4
	.word	_Label_690
	.word	-9
	.word	1
	.word	_Label_691
	.word	-32
	.word	4
	.word	_Label_692
	.word	-36
	.word	4
	.word	0
_Label_683:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_684:
	.ascii	"Pself\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_690:
	.byte	'C'
	.ascii	"_temp_673\0"
	.align
_Label_691:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_692:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_693
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
_Label_693:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_694
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_694:
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
_Label_2834:
	push	r0
	sub	r1,1,r1
	bne	_Label_2834
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
!   _temp_695 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_695) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_695 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_696 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_696 [0 ] into _temp_697
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
!   Data Move: *_temp_697 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_698 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_698 [999 ] into _temp_699
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
!   Data Move: *_temp_699 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_700 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_700 [999 ] into _temp_701
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
!   stackTop = _temp_701		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_702 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_704 = &_temp_703
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_704 = _temp_704 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_706:
!   Data Move: *_temp_704 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_704 = _temp_704 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_705 = _temp_705 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_705) then goto _Label_706
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_706
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_707 = &_temp_703
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2835
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2835:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_702 = *_temp_707  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2836:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2836
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
!   _temp_708 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_710 = &_temp_709
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_710 = _temp_710 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_712:
!   Data Move: *_temp_710 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_710 = _temp_710 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_711 = _temp_711 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_711) then goto _Label_712
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_712
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_713 = &_temp_709
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2837
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2837:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_708 = *_temp_713  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2838:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2838
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
	.word	_Label_714
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_715
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_716
	.word	12
	.word	4
	.word	_Label_717
	.word	-12
	.word	4
	.word	_Label_718
	.word	-16
	.word	4
	.word	_Label_719
	.word	-20
	.word	4
	.word	_Label_720
	.word	-84
	.word	64
	.word	_Label_721
	.word	-88
	.word	4
	.word	_Label_722
	.word	-92
	.word	4
	.word	_Label_723
	.word	-96
	.word	4
	.word	_Label_724
	.word	-100
	.word	4
	.word	_Label_725
	.word	-156
	.word	56
	.word	_Label_726
	.word	-160
	.word	4
	.word	_Label_727
	.word	-164
	.word	4
	.word	_Label_728
	.word	-168
	.word	4
	.word	_Label_729
	.word	-172
	.word	4
	.word	_Label_730
	.word	-176
	.word	4
	.word	_Label_731
	.word	-180
	.word	4
	.word	_Label_732
	.word	-184
	.word	4
	.word	_Label_733
	.word	-188
	.word	4
	.word	0
_Label_714:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_715:
	.ascii	"Pself\0"
	.align
_Label_716:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_695\0"
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
_Label_2839:
	push	r0
	sub	r1,1,r1
	bne	_Label_2839
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
!   _temp_734 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_734  (sizeInBytes=4)
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
!   _temp_736 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_735  sizeInBytes=4
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
	.word	_Label_737
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_738
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_739
	.word	12
	.word	4
	.word	_Label_740
	.word	16
	.word	4
	.word	_Label_741
	.word	-12
	.word	4
	.word	_Label_742
	.word	-16
	.word	4
	.word	_Label_743
	.word	-20
	.word	4
	.word	_Label_744
	.word	-24
	.word	4
	.word	_Label_745
	.word	-28
	.word	4
	.word	0
_Label_737:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_738:
	.ascii	"Pself\0"
	.align
_Label_739:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_740:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_744:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_745:
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
_Label_2840:
	push	r0
	sub	r1,1,r1
	bne	_Label_2840
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_748 == _P_Kernel_currentThread then goto _Label_747		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_747
!	jmp	_Label_746
_Label_746:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_749 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
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
_Label_747:
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
!   _temp_750 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_752		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_752
!	jmp	_Label_751
_Label_751:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_754		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_754
!	jmp	_Label_753
_Label_753:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_755 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
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
_Label_754:
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
!   _temp_757 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_756  sizeInBytes=4
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
_Label_752:
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
	.word	_Label_758
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_760
	.word	-12
	.word	4
	.word	_Label_761
	.word	-16
	.word	4
	.word	_Label_762
	.word	-20
	.word	4
	.word	_Label_763
	.word	-24
	.word	4
	.word	_Label_764
	.word	-28
	.word	4
	.word	_Label_765
	.word	-32
	.word	4
	.word	_Label_766
	.word	-36
	.word	4
	.word	_Label_767
	.word	-40
	.word	4
	.word	_Label_768
	.word	-44
	.word	4
	.word	0
_Label_758:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_759:
	.ascii	"Pself\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_766:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_767:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_768:
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
_Label_2841:
	push	r0
	sub	r1,1,r1
	bne	_Label_2841
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_770		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_770
!	jmp	_Label_769
_Label_769:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_771 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
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
_Label_770:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_774 == _P_Kernel_currentThread then goto _Label_773		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_773
!	jmp	_Label_772
_Label_772:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_775 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
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
_Label_773:
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
!   _temp_776 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_777
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_777
	jmp	_Label_778
_Label_777:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_779 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_779  sizeInBytes=4
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
_Label_778:
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
	.word	_Label_780
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_781
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_782
	.word	-12
	.word	4
	.word	_Label_783
	.word	-16
	.word	4
	.word	_Label_784
	.word	-20
	.word	4
	.word	_Label_785
	.word	-24
	.word	4
	.word	_Label_786
	.word	-28
	.word	4
	.word	_Label_787
	.word	-32
	.word	4
	.word	0
_Label_780:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_781:
	.ascii	"Pself\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_787:
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
_Label_2842:
	push	r0
	sub	r1,1,r1
	bne	_Label_2842
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_791 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_791 [0 ] into _temp_792
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
!   Data Move: _temp_790 = *_temp_792  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_790 == 606348324 then goto _Label_789		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_789
!	jmp	_Label_788
_Label_788:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_793 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
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
	jmp	_Label_794
_Label_789:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_798 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_798 [999 ] into _temp_799
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
!   Data Move: _temp_797 = *_temp_799  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_797 == 606348324 then goto _Label_796		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_796
!	jmp	_Label_795
_Label_795:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_800 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
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
_Label_796:
! END IF...
_Label_794:
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
	.word	_Label_801
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_803
	.word	-12
	.word	4
	.word	_Label_804
	.word	-16
	.word	4
	.word	_Label_805
	.word	-20
	.word	4
	.word	_Label_806
	.word	-24
	.word	4
	.word	_Label_807
	.word	-28
	.word	4
	.word	_Label_808
	.word	-32
	.word	4
	.word	_Label_809
	.word	-36
	.word	4
	.word	_Label_810
	.word	-40
	.word	4
	.word	0
_Label_801:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_802:
	.ascii	"Pself\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_790\0"
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
_Label_2843:
	push	r0
	sub	r1,1,r1
	bne	_Label_2843
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
!   _temp_811 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
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
!   _temp_812 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_814 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_815 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
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
!   _temp_820 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_821 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_820  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_816:
!   Perform the FOR-LOOP termination test
!   if i > _temp_821 then goto _Label_819		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_819
_Label_817:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_822 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_822  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_823 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_823  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_824 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_826 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_826 [i ] into _temp_827
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
!   Data Move: _temp_825 = *_temp_827  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_825  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_828 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_828  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_830 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_830 [i ] into _temp_831
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
!   Data Move: _temp_829 = *_temp_831  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_829  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_832 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_818:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_816
! END FOR
_Label_819:
! CALL STATEMENT...
!   _temp_833 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-116]
!   _temp_834 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_834  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_835 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-108]
!   _temp_837 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_837 [0 ] into _temp_838
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
!   _temp_836 = _temp_838		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_835  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_836  sizeInBytes=4
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
	be	_Label_841
	cmp	r1,2
	be	_Label_842
	cmp	r1,3
	be	_Label_843
	cmp	r1,4
	be	_Label_844
	cmp	r1,5
	be	_Label_845
	jmp	_Label_839
! CASE 1...
_Label_841:
! CALL STATEMENT...
!   _temp_846 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_846  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_840
! CASE 2...
_Label_842:
! CALL STATEMENT...
!   _temp_847 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_840
! CASE 3...
_Label_843:
! CALL STATEMENT...
!   _temp_848 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_840
! CASE 4...
_Label_844:
! CALL STATEMENT...
!   _temp_849 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_840
! CASE 5...
_Label_845:
! CALL STATEMENT...
!   _temp_850 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_840
! DEFAULT CASE...
_Label_839:
! CALL STATEMENT...
!   _temp_851 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
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
_Label_840:
! CALL STATEMENT...
!   _temp_852 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
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
!   _temp_853 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
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
!   _temp_858 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_859 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_858  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_854:
!   Perform the FOR-LOOP termination test
!   if i > _temp_859 then goto _Label_857		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_857
_Label_855:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_860 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_860  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_861 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_861  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_862 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_864 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_864 [i ] into _temp_865
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
!   Data Move: _temp_863 = *_temp_865  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_866 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_866  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_868 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_868 [i ] into _temp_869
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
!   Data Move: _temp_867 = *_temp_869  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_867  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_870 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_870  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_856:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_854
! END FOR
_Label_857:
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
	.word	_Label_871
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_873
	.word	-12
	.word	4
	.word	_Label_874
	.word	-16
	.word	4
	.word	_Label_875
	.word	-20
	.word	4
	.word	_Label_876
	.word	-24
	.word	4
	.word	_Label_877
	.word	-28
	.word	4
	.word	_Label_878
	.word	-32
	.word	4
	.word	_Label_879
	.word	-36
	.word	4
	.word	_Label_880
	.word	-40
	.word	4
	.word	_Label_881
	.word	-44
	.word	4
	.word	_Label_882
	.word	-48
	.word	4
	.word	_Label_883
	.word	-52
	.word	4
	.word	_Label_884
	.word	-56
	.word	4
	.word	_Label_885
	.word	-60
	.word	4
	.word	_Label_886
	.word	-64
	.word	4
	.word	_Label_887
	.word	-68
	.word	4
	.word	_Label_888
	.word	-72
	.word	4
	.word	_Label_889
	.word	-76
	.word	4
	.word	_Label_890
	.word	-80
	.word	4
	.word	_Label_891
	.word	-84
	.word	4
	.word	_Label_892
	.word	-88
	.word	4
	.word	_Label_893
	.word	-92
	.word	4
	.word	_Label_894
	.word	-96
	.word	4
	.word	_Label_895
	.word	-100
	.word	4
	.word	_Label_896
	.word	-104
	.word	4
	.word	_Label_897
	.word	-108
	.word	4
	.word	_Label_898
	.word	-112
	.word	4
	.word	_Label_899
	.word	-116
	.word	4
	.word	_Label_900
	.word	-120
	.word	4
	.word	_Label_901
	.word	-124
	.word	4
	.word	_Label_902
	.word	-128
	.word	4
	.word	_Label_903
	.word	-132
	.word	4
	.word	_Label_904
	.word	-136
	.word	4
	.word	_Label_905
	.word	-140
	.word	4
	.word	_Label_906
	.word	-144
	.word	4
	.word	_Label_907
	.word	-148
	.word	4
	.word	_Label_908
	.word	-152
	.word	4
	.word	_Label_909
	.word	-156
	.word	4
	.word	_Label_910
	.word	-160
	.word	4
	.word	_Label_911
	.word	-164
	.word	4
	.word	_Label_912
	.word	-168
	.word	4
	.word	_Label_913
	.word	-172
	.word	4
	.word	_Label_914
	.word	-176
	.word	4
	.word	_Label_915
	.word	-180
	.word	4
	.word	_Label_916
	.word	-184
	.word	4
	.word	_Label_917
	.word	-188
	.word	4
	.word	_Label_918
	.word	-192
	.word	4
	.word	_Label_919
	.word	-196
	.word	4
	.word	0
_Label_871:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_872:
	.ascii	"Pself\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_868\0"
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
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_918:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_919:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_920
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_920:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_921
	.word	_sourceFileName
	.word	192		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_921:
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
_Label_2844:
	push	r0
	sub	r1,1,r1
	bne	_Label_2844
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_922 = _StringConst_76
	set	_StringConst_76,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_922  sizeInBytes=4
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
!   _temp_924 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_926 = &_temp_925
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_926 = _temp_926 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_928 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_2845:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2845
!   _temp_928 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_930:
!   Data Move: *_temp_926 = _temp_928  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_2846:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2846
!   _temp_926 = _temp_926 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_927 = _temp_927 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_927) then goto _Label_930
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_930
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_931 = &_temp_925
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2847
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2847:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_924 = *_temp_931  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2848:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2848
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_932 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-188]
!   _temp_933 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_933 [0 ] into _temp_934
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
!   Prepare Argument: offset=12  value=_temp_932  sizeInBytes=4
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
!   _temp_935 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-176]
!   _temp_936 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_936 [1 ] into _temp_937
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
!   Prepare Argument: offset=12  value=_temp_935  sizeInBytes=4
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
!   _temp_938 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-164]
!   _temp_939 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_939 [2 ] into _temp_940
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
!   Prepare Argument: offset=12  value=_temp_938  sizeInBytes=4
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
!   _temp_941 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-152]
!   _temp_942 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_942 [3 ] into _temp_943
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
!   Prepare Argument: offset=12  value=_temp_941  sizeInBytes=4
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
!   _temp_944 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-140]
!   _temp_945 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_945 [4 ] into _temp_946
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
!   Prepare Argument: offset=12  value=_temp_944  sizeInBytes=4
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
!   _temp_947 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-128]
!   _temp_948 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_948 [5 ] into _temp_949
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
!   Prepare Argument: offset=12  value=_temp_947  sizeInBytes=4
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
!   _temp_950 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-116]
!   _temp_951 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_951 [6 ] into _temp_952
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
!   Prepare Argument: offset=12  value=_temp_950  sizeInBytes=4
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
!   _temp_953 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-104]
!   _temp_954 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_954 [7 ] into _temp_955
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
!   Prepare Argument: offset=12  value=_temp_953  sizeInBytes=4
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
!   _temp_956 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-92]
!   _temp_957 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_957 [8 ] into _temp_958
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
!   Prepare Argument: offset=12  value=_temp_956  sizeInBytes=4
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
!   _temp_959 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-80]
!   _temp_960 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_960 [9 ] into _temp_961
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
!   Prepare Argument: offset=12  value=_temp_959  sizeInBytes=4
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
!   _temp_966 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_967 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_966  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_962:
!   Perform the FOR-LOOP termination test
!   if index > _temp_967 then goto _Label_965		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_965
_Label_963:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_968 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_968 [index ] into _temp_969
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
!   _temp_970 = _temp_969 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_970 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_972 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_972 [index ] into _temp_973
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
!   _temp_971 = _temp_973		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_974 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_971  sizeInBytes=4
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
_Label_964:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_962
! END FOR
_Label_965:
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
!   _temp_976 = &threadManagerLock
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
!   _temp_978 = &aThreadBecameFree
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
!   _temp_980 = &leadThread
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
	.word	_Label_981
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_983
	.word	-12
	.word	4
	.word	_Label_984
	.word	-16
	.word	4
	.word	_Label_985
	.word	-20
	.word	4
	.word	_Label_986
	.word	-24
	.word	4
	.word	_Label_987
	.word	-28
	.word	4
	.word	_Label_988
	.word	-32
	.word	4
	.word	_Label_989
	.word	-36
	.word	4
	.word	_Label_990
	.word	-40
	.word	4
	.word	_Label_991
	.word	-44
	.word	4
	.word	_Label_992
	.word	-48
	.word	4
	.word	_Label_993
	.word	-52
	.word	4
	.word	_Label_994
	.word	-56
	.word	4
	.word	_Label_995
	.word	-60
	.word	4
	.word	_Label_996
	.word	-64
	.word	4
	.word	_Label_997
	.word	-68
	.word	4
	.word	_Label_998
	.word	-72
	.word	4
	.word	_Label_999
	.word	-76
	.word	4
	.word	_Label_1000
	.word	-80
	.word	4
	.word	_Label_1001
	.word	-84
	.word	4
	.word	_Label_1002
	.word	-88
	.word	4
	.word	_Label_1003
	.word	-92
	.word	4
	.word	_Label_1004
	.word	-96
	.word	4
	.word	_Label_1005
	.word	-100
	.word	4
	.word	_Label_1006
	.word	-104
	.word	4
	.word	_Label_1007
	.word	-108
	.word	4
	.word	_Label_1008
	.word	-112
	.word	4
	.word	_Label_1009
	.word	-116
	.word	4
	.word	_Label_1010
	.word	-120
	.word	4
	.word	_Label_1011
	.word	-124
	.word	4
	.word	_Label_1012
	.word	-128
	.word	4
	.word	_Label_1013
	.word	-132
	.word	4
	.word	_Label_1014
	.word	-136
	.word	4
	.word	_Label_1015
	.word	-140
	.word	4
	.word	_Label_1016
	.word	-144
	.word	4
	.word	_Label_1017
	.word	-148
	.word	4
	.word	_Label_1018
	.word	-152
	.word	4
	.word	_Label_1019
	.word	-156
	.word	4
	.word	_Label_1020
	.word	-160
	.word	4
	.word	_Label_1021
	.word	-164
	.word	4
	.word	_Label_1022
	.word	-168
	.word	4
	.word	_Label_1023
	.word	-172
	.word	4
	.word	_Label_1024
	.word	-176
	.word	4
	.word	_Label_1025
	.word	-180
	.word	4
	.word	_Label_1026
	.word	-184
	.word	4
	.word	_Label_1027
	.word	-188
	.word	4
	.word	_Label_1028
	.word	-192
	.word	4
	.word	_Label_1029
	.word	-196
	.word	4
	.word	_Label_1030
	.word	-4360
	.word	4164
	.word	_Label_1031
	.word	-4364
	.word	4
	.word	_Label_1032
	.word	-4368
	.word	4
	.word	_Label_1033
	.word	-46012
	.word	41644
	.word	_Label_1034
	.word	-46016
	.word	4
	.word	_Label_1035
	.word	-46020
	.word	4
	.word	_Label_1036
	.word	-46024
	.word	4
	.word	_Label_1037
	.word	-46028
	.word	4
	.word	0
_Label_981:
	.ascii	"ThreadManager"
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
_Label_984:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_1037:
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
_Label_2849:
	push	r0
	sub	r1,1,r1
	bne	_Label_2849
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
!   _temp_1038 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
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
!   _temp_1043 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1044 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1043  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1039:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1044 then goto _Label_1042		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1042
_Label_1040:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1045 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
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
!   _temp_1046 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1048 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_1048 [i ] into _temp_1049
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
!   _temp_1047 = _temp_1049		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_193_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1041:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1039
! END FOR
_Label_1042:
! CALL STATEMENT...
!   _temp_1050 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1050  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1051 = _function_192_PrintObjectAddr
	set	_function_192_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1052 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1051  sizeInBytes=4
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
	.word	_Label_1053
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1055
	.word	-12
	.word	4
	.word	_Label_1056
	.word	-16
	.word	4
	.word	_Label_1057
	.word	-20
	.word	4
	.word	_Label_1058
	.word	-24
	.word	4
	.word	_Label_1059
	.word	-28
	.word	4
	.word	_Label_1060
	.word	-32
	.word	4
	.word	_Label_1061
	.word	-36
	.word	4
	.word	_Label_1062
	.word	-40
	.word	4
	.word	_Label_1063
	.word	-44
	.word	4
	.word	_Label_1064
	.word	-48
	.word	4
	.word	_Label_1065
	.word	-52
	.word	4
	.word	_Label_1066
	.word	-56
	.word	4
	.word	_Label_1067
	.word	-60
	.word	4
	.word	0
_Label_1053:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1054:
	.ascii	"Pself\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1066:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1067:
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
_Label_2850:
	push	r0
	sub	r1,1,r1
	bne	_Label_2850
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1068 = &threadManagerLock
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
_Label_1069:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_1072 = &freeList
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
!   if result==true then goto _Label_1070 else goto _Label_1071
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1071
	jmp	_Label_1070
_Label_1070:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1073 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_1074 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1073  sizeInBytes=4
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
	jmp	_Label_1069
_Label_1071:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1075 = &freeList
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
!   _temp_1076 = threadToReturn + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1076 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1077 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1078 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1077  sizeInBytes=4
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
!   _temp_1079 = &threadManagerLock
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
	.word	_Label_1080
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1081
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1082
	.word	-12
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
	.word	0
_Label_1080:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1081:
	.ascii	"Pself\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1091:
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
_Label_2851:
	push	r0
	sub	r1,1,r1
	bne	_Label_2851
	mov	782,r13		! source line 782
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1092 = &threadManagerLock
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
!   if th == 0 then goto _Label_1094		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1094
!	jmp	_Label_1093
_Label_1093:
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
!   _temp_1095 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1095 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0SE",r10
!   _temp_1096 = &freeList
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
!   _temp_1097 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_1098 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1097  sizeInBytes=4
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
	jmp	_Label_1099
_Label_1094:
! ELSE...
	mov	795,r13		! source line 795
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1100 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
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
_Label_1099:
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_1101 = &threadManagerLock
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
	.word	_Label_1102
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1103
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1104
	.word	12
	.word	4
	.word	_Label_1105
	.word	-12
	.word	4
	.word	_Label_1106
	.word	-16
	.word	4
	.word	_Label_1107
	.word	-20
	.word	4
	.word	_Label_1108
	.word	-24
	.word	4
	.word	_Label_1109
	.word	-28
	.word	4
	.word	_Label_1110
	.word	-32
	.word	4
	.word	_Label_1111
	.word	-36
	.word	4
	.word	0
_Label_1102:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1103:
	.ascii	"Pself\0"
	.align
_Label_1104:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1112
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1112:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1113
	.word	_sourceFileName
	.word	216		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1113:
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
_Label_2852:
	push	r0
	sub	r1,1,r1
	bne	_Label_2852
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
_Label_2853:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2853
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1115 = &addrSpace
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
	.word	_Label_1116
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1118
	.word	-12
	.word	4
	.word	_Label_1119
	.word	-16
	.word	4
	.word	0
_Label_1116:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
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
_Label_2854:
	push	r0
	sub	r1,1,r1
	bne	_Label_2854
	mov	824,r13		! source line 824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1120) then goto _runtimeErrorNullPointer
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
!   _temp_1121 = &addrSpace
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
!   _temp_1122 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
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
	call	_function_193_ThreadPrintShort
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
	.word	_Label_1123
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1125
	.word	-12
	.word	4
	.word	_Label_1126
	.word	-16
	.word	4
	.word	_Label_1127
	.word	-20
	.word	4
	.word	0
_Label_1123:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1124:
	.ascii	"Pself\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1120\0"
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
_Label_2855:
	push	r0
	sub	r1,1,r1
	bne	_Label_2855
	mov	847,r13		! source line 847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1128 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1130 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1130  sizeInBytes=4
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
!   _temp_1131 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1133		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1133
!	jmp	_Label_1132
_Label_1132:
! THEN...
	mov	857,r13		! source line 857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1134 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1135
_Label_1133:
! ELSE...
	mov	858,r13		! source line 858
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1137		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1137
!	jmp	_Label_1136
_Label_1136:
! THEN...
	mov	859,r13		! source line 859
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1138 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1139
_Label_1137:
! ELSE...
	mov	860,r13		! source line 860
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1141		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1141
!	jmp	_Label_1140
_Label_1140:
! THEN...
	mov	861,r13		! source line 861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1142 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1143
_Label_1141:
! ELSE...
	mov	863,r13		! source line 863
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1144 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1144  sizeInBytes=4
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
_Label_1143:
! END IF...
_Label_1139:
! END IF...
_Label_1135:
! CALL STATEMENT...
!   _temp_1145 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1145  sizeInBytes=4
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
!   _temp_1146 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
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
	.word	_Label_1147
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1148
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1149
	.word	-12
	.word	4
	.word	_Label_1150
	.word	-16
	.word	4
	.word	_Label_1151
	.word	-20
	.word	4
	.word	_Label_1152
	.word	-24
	.word	4
	.word	_Label_1153
	.word	-28
	.word	4
	.word	_Label_1154
	.word	-32
	.word	4
	.word	_Label_1155
	.word	-36
	.word	4
	.word	_Label_1156
	.word	-40
	.word	4
	.word	_Label_1157
	.word	-44
	.word	4
	.word	_Label_1158
	.word	-48
	.word	4
	.word	0
_Label_1147:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1148:
	.ascii	"Pself\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1159
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1159:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1160
	.word	_sourceFileName
	.word	236		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1160:
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
_Label_2856:
	push	r0
	sub	r1,1,r1
	bne	_Label_2856
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
!   _temp_1162 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1452]
!   NEW ARRAY Constructor...
!   _temp_1164 = &_temp_1163
	add	r14,-1448,r1
	store	r1,[r14+-204]
!   _temp_1164 = _temp_1164 + 4
	load	[r14+-204],r1
	add	r1,4,r1
	store	r1,[r14+-204]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1166 = zeros  (sizeInBytes=124)
	add	r14,-196,r4
	mov	31,r3
_Label_2857:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2857
!   _temp_1166 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-196]
	mov	10,r1
	store	r1,[r14+-200]
_Label_1168:
!   Data Move: *_temp_1164 = _temp_1166  (sizeInBytes=124)
	add	r14,-196,r5
	load	[r14+-204],r4
	mov	31,r3
_Label_2858:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2858
!   _temp_1164 = _temp_1164 + 124
	load	[r14+-204],r1
	add	r1,124,r1
	store	r1,[r14+-204]
!   _temp_1165 = _temp_1165 + -1
	load	[r14+-200],r1
	add	r1,-1,r1
	store	r1,[r14+-200]
!   if intNotZero (_temp_1165) then goto _Label_1168
	load	[r14+-200],r1
	cmp	r1,r0
	bne	_Label_1168
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1448]
!   _temp_1169 = &_temp_1163
	add	r14,-1448,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1452],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2859
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2859:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1162 = *_temp_1169  (sizeInBytes=1244)
	load	[r14+-68],r5
	load	[r14+-1452],r4
	mov	311,r3
_Label_2860:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2860
! FOR STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1174 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1175 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1174  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1460]
_Label_1170:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1175 then goto _Label_1173		
	load	[r14+-1460],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1173
_Label_1171:
	mov	899,r13		! source line 899
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1176 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1176 [index ] into _temp_1177
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
!   _temp_1179 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1179 [index ] into _temp_1180
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
!   _temp_1178 = _temp_1180		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1181 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1178  sizeInBytes=4
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
_Label_1172:
!   index = index + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1170
! END FOR
_Label_1173:
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
!   _temp_1183 = &processManagerLock
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
!   _temp_1185 = &aProcessBecameFree
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
!   _temp_1187 = &aProcessDied
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
	.word	_Label_1188
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1189
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1190
	.word	-12
	.word	4
	.word	_Label_1191
	.word	-16
	.word	4
	.word	_Label_1192
	.word	-20
	.word	4
	.word	_Label_1193
	.word	-24
	.word	4
	.word	_Label_1194
	.word	-28
	.word	4
	.word	_Label_1195
	.word	-32
	.word	4
	.word	_Label_1196
	.word	-36
	.word	4
	.word	_Label_1197
	.word	-40
	.word	4
	.word	_Label_1198
	.word	-44
	.word	4
	.word	_Label_1199
	.word	-48
	.word	4
	.word	_Label_1200
	.word	-52
	.word	4
	.word	_Label_1201
	.word	-56
	.word	4
	.word	_Label_1202
	.word	-60
	.word	4
	.word	_Label_1203
	.word	-64
	.word	4
	.word	_Label_1204
	.word	-68
	.word	4
	.word	_Label_1205
	.word	-72
	.word	4
	.word	_Label_1206
	.word	-196
	.word	124
	.word	_Label_1207
	.word	-200
	.word	4
	.word	_Label_1208
	.word	-204
	.word	4
	.word	_Label_1209
	.word	-1448
	.word	1244
	.word	_Label_1210
	.word	-1452
	.word	4
	.word	_Label_1211
	.word	-1456
	.word	4
	.word	_Label_1212
	.word	-1460
	.word	4
	.word	0
_Label_1188:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1189:
	.ascii	"Pself\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1212:
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
_Label_2861:
	push	r0
	sub	r1,1,r1
	bne	_Label_2861
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
!   _temp_1213 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
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
!   _temp_1218 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1219 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1218  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1214:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1219 then goto _Label_1217		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1217
_Label_1215:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1220 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
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
!   _temp_1221 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_1222 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1222 [i ] into _temp_1223
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
_Label_1216:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1214
! END FOR
_Label_1217:
! CALL STATEMENT...
!   _temp_1224 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1225 = _function_192_PrintObjectAddr
	set	_function_192_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1226 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1225  sizeInBytes=4
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
	.word	_Label_1227
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1228
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1229
	.word	-12
	.word	4
	.word	_Label_1230
	.word	-16
	.word	4
	.word	_Label_1231
	.word	-20
	.word	4
	.word	_Label_1232
	.word	-24
	.word	4
	.word	_Label_1233
	.word	-28
	.word	4
	.word	_Label_1234
	.word	-32
	.word	4
	.word	_Label_1235
	.word	-36
	.word	4
	.word	_Label_1236
	.word	-40
	.word	4
	.word	_Label_1237
	.word	-44
	.word	4
	.word	_Label_1238
	.word	-48
	.word	4
	.word	_Label_1239
	.word	-52
	.word	4
	.word	_Label_1240
	.word	-56
	.word	4
	.word	0
_Label_1227:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1228:
	.ascii	"Pself\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1239:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1240:
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
_Label_2862:
	push	r0
	sub	r1,1,r1
	bne	_Label_2862
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
!   _temp_1241 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
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
!   _temp_1246 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1247 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1246  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1242:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1247 then goto _Label_1245		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1245
_Label_1243:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1248 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
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
!   _temp_1249 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1249 [i ] into _temp_1250
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
_Label_1244:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1242
! END FOR
_Label_1245:
! CALL STATEMENT...
!   _temp_1251 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1251  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1252 = _function_192_PrintObjectAddr
	set	_function_192_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1253 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1252  sizeInBytes=4
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
	.word	_Label_1254
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1255
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1256
	.word	-12
	.word	4
	.word	_Label_1257
	.word	-16
	.word	4
	.word	_Label_1258
	.word	-20
	.word	4
	.word	_Label_1259
	.word	-24
	.word	4
	.word	_Label_1260
	.word	-28
	.word	4
	.word	_Label_1261
	.word	-32
	.word	4
	.word	_Label_1262
	.word	-36
	.word	4
	.word	_Label_1263
	.word	-40
	.word	4
	.word	_Label_1264
	.word	-44
	.word	4
	.word	_Label_1265
	.word	-48
	.word	4
	.word	_Label_1266
	.word	-52
	.word	4
	.word	0
_Label_1254:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1255:
	.ascii	"Pself\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1265:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1266:
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
_Label_2863:
	push	r0
	sub	r1,1,r1
	bne	_Label_2863
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1267 = &processManagerLock
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
_Label_1268:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1271 = &freeList
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
!   if result==true then goto _Label_1269 else goto _Label_1270
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1270
	jmp	_Label_1269
_Label_1269:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1272 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1273 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1272  sizeInBytes=4
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
	jmp	_Label_1268
_Label_1270:
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1274 = &freeList
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
!   _temp_1275 = processToReturn + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1275 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1276 = &processManagerLock
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
	.word	_Label_1277
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1278
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1279
	.word	-12
	.word	4
	.word	_Label_1280
	.word	-16
	.word	4
	.word	_Label_1281
	.word	-20
	.word	4
	.word	_Label_1282
	.word	-24
	.word	4
	.word	_Label_1283
	.word	-28
	.word	4
	.word	_Label_1284
	.word	-32
	.word	4
	.word	_Label_1285
	.word	-36
	.word	4
	.word	_Label_1286
	.word	-40
	.word	4
	.word	0
_Label_1277:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1278:
	.ascii	"Pself\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1276\0"
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
	.ascii	"_temp_1267\0"
	.align
_Label_1286:
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
_Label_2864:
	push	r0
	sub	r1,1,r1
	bne	_Label_2864
	mov	987,r13		! source line 987
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1287 = &processManagerLock
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
!   _temp_1288 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1288 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_1289 = &freeList
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
!   _temp_1290 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1291 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1290  sizeInBytes=4
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
!   _temp_1292 = &processManagerLock
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
	.word	_Label_1293
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1294
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1295
	.word	12
	.word	4
	.word	_Label_1296
	.word	-12
	.word	4
	.word	_Label_1297
	.word	-16
	.word	4
	.word	_Label_1298
	.word	-20
	.word	4
	.word	_Label_1299
	.word	-24
	.word	4
	.word	_Label_1300
	.word	-28
	.word	4
	.word	_Label_1301
	.word	-32
	.word	4
	.word	0
_Label_1293:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1294:
	.ascii	"Pself\0"
	.align
_Label_1295:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1302
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1302:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1303
	.word	_sourceFileName
	.word	259		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1303:
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
_Label_2865:
	push	r0
	sub	r1,1,r1
	bne	_Label_2865
	mov	1039,r13		! source line 1039
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1304 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1046,r13		! source line 1046
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
	mov	1047,r13		! source line 1047
	mov	"\0\0SE",r10
!   _temp_1306 = &framesInUse
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
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1049,r13		! source line 1049
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
	mov	1050,r13		! source line 1050
	mov	"\0\0SE",r10
!   _temp_1308 = &frameManagerLock
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
	mov	1051,r13		! source line 1051
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
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1310 = &newFramesAvailable
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
	mov	1058,r13		! source line 1058
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1315 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1316 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1315  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1311:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1316 then goto _Label_1314		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1314
_Label_1312:
	mov	1058,r13		! source line 1058
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1319 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1319) then goto _Label_1318
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1318
!	jmp	_Label_1317
_Label_1317:
! THEN...
	mov	1062,r13		! source line 1062
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1320 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1320  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1062,r13		! source line 1062
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1318:
!   Increment the FOR-LOOP index variable and jump back
_Label_1313:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1311
! END FOR
_Label_1314:
! RETURN STATEMENT...
	mov	1058,r13		! source line 1058
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
	.word	_Label_1321
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1322
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1323
	.word	-12
	.word	4
	.word	_Label_1324
	.word	-16
	.word	4
	.word	_Label_1325
	.word	-20
	.word	4
	.word	_Label_1326
	.word	-24
	.word	4
	.word	_Label_1327
	.word	-28
	.word	4
	.word	_Label_1328
	.word	-32
	.word	4
	.word	_Label_1329
	.word	-36
	.word	4
	.word	_Label_1330
	.word	-40
	.word	4
	.word	_Label_1331
	.word	-44
	.word	4
	.word	_Label_1332
	.word	-48
	.word	4
	.word	_Label_1333
	.word	-52
	.word	4
	.word	_Label_1334
	.word	-56
	.word	4
	.word	0
_Label_1321:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1322:
	.ascii	"Pself\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1334:
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
_Label_2866:
	push	r0
	sub	r1,1,r1
	bne	_Label_2866
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   _temp_1335 = &frameManagerLock
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
!   _temp_1336 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1336  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1074,r13		! source line 1074
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1337 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1337  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1075,r13		! source line 1075
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1338 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1338  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1339 = &framesInUse
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
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_1340 = &frameManagerLock
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
	mov	1078,r13		! source line 1078
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
	.word	_Label_1341
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1342
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1343
	.word	-12
	.word	4
	.word	_Label_1344
	.word	-16
	.word	4
	.word	_Label_1345
	.word	-20
	.word	4
	.word	_Label_1346
	.word	-24
	.word	4
	.word	_Label_1347
	.word	-28
	.word	4
	.word	_Label_1348
	.word	-32
	.word	4
	.word	0
_Label_1341:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1342:
	.ascii	"Pself\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1335\0"
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
_Label_2867:
	push	r0
	sub	r1,1,r1
	bne	_Label_2867
	mov	1083,r13		! source line 1083
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_1349 = &frameManagerLock
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
	mov	1094,r13		! source line 1094
	mov	"\0\0WH",r10
_Label_1350:
!   if numberFreeFrames >= 1 then goto _Label_1352		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1352
!	jmp	_Label_1351
_Label_1351:
	mov	1094,r13		! source line 1094
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1353 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1354 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1353  sizeInBytes=4
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
	jmp	_Label_1350
_Label_1352:
! ASSIGNMENT STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1355 = &framesInUse
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
	mov	1100,r13		! source line 1100
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
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_1356 = &frameManagerLock
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
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
!   _temp_1357 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1357		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1108,r13		! source line 1108
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
	.word	_Label_1358
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1359
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1360
	.word	-12
	.word	4
	.word	_Label_1361
	.word	-16
	.word	4
	.word	_Label_1362
	.word	-20
	.word	4
	.word	_Label_1363
	.word	-24
	.word	4
	.word	_Label_1364
	.word	-28
	.word	4
	.word	_Label_1365
	.word	-32
	.word	4
	.word	_Label_1366
	.word	-36
	.word	4
	.word	_Label_1367
	.word	-40
	.word	4
	.word	0
_Label_1358:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1359:
	.ascii	"Pself\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1366:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1367:
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
_Label_2868:
	push	r0
	sub	r1,1,r1
	bne	_Label_2868
	mov	1113,r13		! source line 1113
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1368 = &frameManagerLock
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
	mov	1125,r13		! source line 1125
	mov	"\0\0WH",r10
_Label_1369:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1371		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1371
!	jmp	_Label_1370
_Label_1370:
	mov	1125,r13		! source line 1125
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_1372 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1373 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1372  sizeInBytes=4
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
	jmp	_Label_1369
_Label_1371:
! FOR STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1378 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1379 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1378  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1374:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1379 then goto _Label_1377		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1377
_Label_1375:
	mov	1132,r13		! source line 1132
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_1380 = &framesInUse
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
	mov	1134,r13		! source line 1134
	mov	"\0\0AS",r10
!   _temp_1381 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_1381		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
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
_Label_1376:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1374
! END FOR
_Label_1377:
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
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
	mov	1142,r13		! source line 1142
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1382 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1385 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1384 = *_temp_1385  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1383 = _temp_1384 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1382 = _temp_1383  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1386 = &frameManagerLock
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
	mov	1144,r13		! source line 1144
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
	.word	_Label_1387
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1388
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1389
	.word	12
	.word	4
	.word	_Label_1390
	.word	16
	.word	4
	.word	_Label_1391
	.word	-12
	.word	4
	.word	_Label_1392
	.word	-16
	.word	4
	.word	_Label_1393
	.word	-20
	.word	4
	.word	_Label_1394
	.word	-24
	.word	4
	.word	_Label_1395
	.word	-28
	.word	4
	.word	_Label_1396
	.word	-32
	.word	4
	.word	_Label_1397
	.word	-36
	.word	4
	.word	_Label_1398
	.word	-40
	.word	4
	.word	_Label_1399
	.word	-44
	.word	4
	.word	_Label_1400
	.word	-48
	.word	4
	.word	_Label_1401
	.word	-52
	.word	4
	.word	_Label_1402
	.word	-56
	.word	4
	.word	_Label_1403
	.word	-60
	.word	4
	.word	_Label_1404
	.word	-64
	.word	4
	.word	_Label_1405
	.word	-68
	.word	4
	.word	0
_Label_1387:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1388:
	.ascii	"Pself\0"
	.align
_Label_1389:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1390:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1403:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1404:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1405:
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
_Label_2869:
	push	r0
	sub	r1,1,r1
	bne	_Label_2869
	mov	1150,r13		! source line 1150
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1406 = &frameManagerLock
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
	mov	1162,r13		! source line 1162
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
	mov	1164,r13		! source line 1164
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1407 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_1407  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1412 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1413 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1412  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1408:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1413 then goto _Label_1411		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1411
_Label_1409:
	mov	1169,r13		! source line 1169
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
	mov	1170,r13		! source line 1170
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
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   _temp_1414 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_1414 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_1415 = &framesInUse
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
	mov	1173,r13		! source line 1173
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
_Label_1410:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1408
! END FOR
_Label_1411:
! SEND STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0SE",r10
!   _temp_1416 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1417 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1416  sizeInBytes=4
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
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1418 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1421 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1420 = *_temp_1421  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1419 = _temp_1420 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1418 = _temp_1419  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_1422 = &frameManagerLock
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
	mov	1182,r13		! source line 1182
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
	.word	_Label_1423
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1424
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1425
	.word	12
	.word	4
	.word	_Label_1426
	.word	-12
	.word	4
	.word	_Label_1427
	.word	-16
	.word	4
	.word	_Label_1428
	.word	-20
	.word	4
	.word	_Label_1429
	.word	-24
	.word	4
	.word	_Label_1430
	.word	-28
	.word	4
	.word	_Label_1431
	.word	-32
	.word	4
	.word	_Label_1432
	.word	-36
	.word	4
	.word	_Label_1433
	.word	-40
	.word	4
	.word	_Label_1434
	.word	-44
	.word	4
	.word	_Label_1435
	.word	-48
	.word	4
	.word	_Label_1436
	.word	-52
	.word	4
	.word	_Label_1437
	.word	-56
	.word	4
	.word	_Label_1438
	.word	-60
	.word	4
	.word	_Label_1439
	.word	-64
	.word	4
	.word	_Label_1440
	.word	-68
	.word	4
	.word	_Label_1441
	.word	-72
	.word	4
	.word	_Label_1442
	.word	-76
	.word	4
	.word	0
_Label_1423:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1424:
	.ascii	"Pself\0"
	.align
_Label_1425:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1439:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1440:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_1441:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1442:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1443
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
_Label_1443:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1444
	.word	_sourceFileName
	.word	278		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1444:
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
_Label_2870:
	push	r0
	sub	r1,1,r1
	bne	_Label_2870
	mov	1193,r13		! source line 1193
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0AS",r10
!   _temp_1445 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1447 = &_temp_1446
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1447 = _temp_1447 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1449:
!   Data Move: *_temp_1447 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1447 = _temp_1447 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1448 = _temp_1448 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1448) then goto _Label_1449
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1449
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1450 = &_temp_1446
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2871
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2871:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1445 = *_temp_1450  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_2872:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2872
! RETURN STATEMENT...
	mov	1198,r13		! source line 1198
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
	.word	_Label_1451
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1453
	.word	-12
	.word	4
	.word	_Label_1454
	.word	-16
	.word	4
	.word	_Label_1455
	.word	-20
	.word	4
	.word	_Label_1456
	.word	-104
	.word	84
	.word	_Label_1457
	.word	-108
	.word	4
	.word	0
_Label_1451:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1452:
	.ascii	"Pself\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1445\0"
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
_Label_2873:
	push	r0
	sub	r1,1,r1
	bne	_Label_2873
	mov	1203,r13		! source line 1203
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1458 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1458  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1208,r13		! source line 1208
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1459 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1459  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1209,r13		! source line 1209
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1464 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1465 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1464  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1460:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1465 then goto _Label_1463		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1463
_Label_1461:
	mov	1210,r13		! source line 1210
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1466 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1466  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1211,r13		! source line 1211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1468 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1468 [i ] into _temp_1469
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
!   _temp_1467 = _temp_1469		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1467  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1470 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1470  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1213,r13		! source line 1213
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1472 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1472 [i ] into _temp_1473
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
!   Data Move: _temp_1471 = *_temp_1473  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1471  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1474 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1474  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1475 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1476 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1476  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1478) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1477  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1477  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1479 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0IF",r10
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1483) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1482  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1482) then goto _Label_1481
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1481
!	jmp	_Label_1480
_Label_1480:
! THEN...
	mov	1221,r13		! source line 1221
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1485) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1484  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1484  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1486
_Label_1481:
! ELSE...
	mov	1223,r13		! source line 1223
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1487 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1487  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1486:
! CALL STATEMENT...
!   _temp_1488 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1488  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0IF",r10
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1491) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1489 else goto _Label_1490
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1490
	jmp	_Label_1489
_Label_1489:
! THEN...
	mov	1227,r13		! source line 1227
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1492 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1493
_Label_1490:
! ELSE...
	mov	1229,r13		! source line 1229
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1494 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1493:
! CALL STATEMENT...
!   _temp_1495 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0IF",r10
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1498) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1496 else goto _Label_1497
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1497
	jmp	_Label_1496
_Label_1496:
! THEN...
	mov	1233,r13		! source line 1233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1499 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1500
_Label_1497:
! ELSE...
	mov	1235,r13		! source line 1235
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1501 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1500:
! CALL STATEMENT...
!   _temp_1502 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0IF",r10
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1505) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1503 else goto _Label_1504
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1504
	jmp	_Label_1503
_Label_1503:
! THEN...
	mov	1239,r13		! source line 1239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1506 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1507
_Label_1504:
! ELSE...
	mov	1241,r13		! source line 1241
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1508 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1507:
! CALL STATEMENT...
!   _temp_1509 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0IF",r10
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1512) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1510 else goto _Label_1511
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1511
	jmp	_Label_1510
_Label_1510:
! THEN...
	mov	1245,r13		! source line 1245
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1513 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1513  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1514
_Label_1511:
! ELSE...
	mov	1247,r13		! source line 1247
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1515 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1515  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1514:
! CALL STATEMENT...
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1462:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1460
! END FOR
_Label_1463:
! RETURN STATEMENT...
	mov	1210,r13		! source line 1210
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
	.word	_Label_1516
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1517
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1518
	.word	-12
	.word	4
	.word	_Label_1519
	.word	-16
	.word	4
	.word	_Label_1520
	.word	-20
	.word	4
	.word	_Label_1521
	.word	-24
	.word	4
	.word	_Label_1522
	.word	-28
	.word	4
	.word	_Label_1523
	.word	-32
	.word	4
	.word	_Label_1524
	.word	-36
	.word	4
	.word	_Label_1525
	.word	-40
	.word	4
	.word	_Label_1526
	.word	-44
	.word	4
	.word	_Label_1527
	.word	-48
	.word	4
	.word	_Label_1528
	.word	-52
	.word	4
	.word	_Label_1529
	.word	-56
	.word	4
	.word	_Label_1530
	.word	-60
	.word	4
	.word	_Label_1531
	.word	-64
	.word	4
	.word	_Label_1532
	.word	-68
	.word	4
	.word	_Label_1533
	.word	-72
	.word	4
	.word	_Label_1534
	.word	-76
	.word	4
	.word	_Label_1535
	.word	-80
	.word	4
	.word	_Label_1536
	.word	-84
	.word	4
	.word	_Label_1537
	.word	-88
	.word	4
	.word	_Label_1538
	.word	-92
	.word	4
	.word	_Label_1539
	.word	-96
	.word	4
	.word	_Label_1540
	.word	-100
	.word	4
	.word	_Label_1541
	.word	-104
	.word	4
	.word	_Label_1542
	.word	-108
	.word	4
	.word	_Label_1543
	.word	-112
	.word	4
	.word	_Label_1544
	.word	-116
	.word	4
	.word	_Label_1545
	.word	-120
	.word	4
	.word	_Label_1546
	.word	-124
	.word	4
	.word	_Label_1547
	.word	-128
	.word	4
	.word	_Label_1548
	.word	-132
	.word	4
	.word	_Label_1549
	.word	-136
	.word	4
	.word	_Label_1550
	.word	-140
	.word	4
	.word	_Label_1551
	.word	-144
	.word	4
	.word	_Label_1552
	.word	-148
	.word	4
	.word	_Label_1553
	.word	-152
	.word	4
	.word	_Label_1554
	.word	-156
	.word	4
	.word	_Label_1555
	.word	-160
	.word	4
	.word	_Label_1556
	.word	-164
	.word	4
	.word	_Label_1557
	.word	-168
	.word	4
	.word	0
_Label_1516:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1517:
	.ascii	"Pself\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1557:
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
_Label_2874:
	push	r0
	sub	r1,1,r1
	bne	_Label_2874
	mov	1255,r13		! source line 1255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0RE",r10
!   _temp_1560 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1560 [entry ] into _temp_1561
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
!   Data Move: _temp_1559 = *_temp_1561  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1558 = _temp_1559 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1558  (sizeInBytes=4)
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
	.word	_Label_1562
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1563
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1564
	.word	12
	.word	4
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
	.word	-24
	.word	4
	.word	0
_Label_1562:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1563:
	.ascii	"Pself\0"
	.align
_Label_1564:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1561\0"
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
_Label_2875:
	push	r0
	sub	r1,1,r1
	bne	_Label_2875
	mov	1265,r13		! source line 1265
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0RE",r10
!   _temp_1571 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1571 [entry ] into _temp_1572
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
!   Data Move: _temp_1570 = *_temp_1572  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1569 = _temp_1570 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1569  (sizeInBytes=4)
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
	.word	_Label_1573
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1574
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1575
	.word	12
	.word	4
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
	.word	0
_Label_1573:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1574:
	.ascii	"Pself\0"
	.align
_Label_1575:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1569\0"
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
_Label_2876:
	push	r0
	sub	r1,1,r1
	bne	_Label_2876
	mov	1274,r13		! source line 1274
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0AS",r10
!   _temp_1580 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1580 [entry ] into _temp_1581
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
!   _temp_1585 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1585 [entry ] into _temp_1586
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
!   Data Move: _temp_1584 = *_temp_1586  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1583 = _temp_1584 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1582 = _temp_1583 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1581 = _temp_1582  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1279,r13		! source line 1279
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
	.word	_Label_1587
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1589
	.word	12
	.word	4
	.word	_Label_1590
	.word	16
	.word	4
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
	.word	_Label_1597
	.word	-36
	.word	4
	.word	0
_Label_1587:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1588:
	.ascii	"Pself\0"
	.align
_Label_1589:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1590:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1580\0"
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
_Label_2877:
	push	r0
	sub	r1,1,r1
	bne	_Label_2877
	mov	1284,r13		! source line 1284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0RE",r10
!   _temp_1601 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1601 [entry ] into _temp_1602
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
!   Data Move: _temp_1600 = *_temp_1602  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1599 = _temp_1600 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1599) then goto _Label_1603
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1603
!   _temp_1598 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1604
_Label_1603:
!   _temp_1598 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1604:
!   ReturnResult: _temp_1598  (sizeInBytes=1)
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
	.word	_Label_1605
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1607
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_1605:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1606:
	.ascii	"Pself\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1612:
	.byte	'C'
	.ascii	"_temp_1598\0"
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
_Label_2878:
	push	r0
	sub	r1,1,r1
	bne	_Label_2878
	mov	1293,r13		! source line 1293
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
!   _temp_1616 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1616 [entry ] into _temp_1617
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
!   Data Move: _temp_1615 = *_temp_1617  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1614 = _temp_1615 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1614) then goto _Label_1618
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1618
!   _temp_1613 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1619
_Label_1618:
!   _temp_1613 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1619:
!   ReturnResult: _temp_1613  (sizeInBytes=1)
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
	.word	_Label_1620
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1622
	.word	12
	.word	4
	.word	_Label_1623
	.word	-16
	.word	4
	.word	_Label_1624
	.word	-20
	.word	4
	.word	_Label_1625
	.word	-24
	.word	4
	.word	_Label_1626
	.word	-28
	.word	4
	.word	_Label_1627
	.word	-9
	.word	1
	.word	0
_Label_1620:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1621:
	.ascii	"Pself\0"
	.align
_Label_1622:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1627:
	.byte	'C'
	.ascii	"_temp_1613\0"
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
_Label_2879:
	push	r0
	sub	r1,1,r1
	bne	_Label_2879
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0RE",r10
!   _temp_1631 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1631 [entry ] into _temp_1632
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
!   Data Move: _temp_1630 = *_temp_1632  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1629 = _temp_1630 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1629) then goto _Label_1633
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1633
!   _temp_1628 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1634
_Label_1633:
!   _temp_1628 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1634:
!   ReturnResult: _temp_1628  (sizeInBytes=1)
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
	.word	_Label_1635
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	12
	.word	4
	.word	_Label_1638
	.word	-16
	.word	4
	.word	_Label_1639
	.word	-20
	.word	4
	.word	_Label_1640
	.word	-24
	.word	4
	.word	_Label_1641
	.word	-28
	.word	4
	.word	_Label_1642
	.word	-9
	.word	1
	.word	0
_Label_1635:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1642:
	.byte	'C'
	.ascii	"_temp_1628\0"
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
_Label_2880:
	push	r0
	sub	r1,1,r1
	bne	_Label_2880
	mov	1311,r13		! source line 1311
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0RE",r10
!   _temp_1646 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1646 [entry ] into _temp_1647
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
!   Data Move: _temp_1645 = *_temp_1647  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1644 = _temp_1645 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1644) then goto _Label_1648
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1648
!   _temp_1643 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1649
_Label_1648:
!   _temp_1643 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1649:
!   ReturnResult: _temp_1643  (sizeInBytes=1)
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
	.word	_Label_1650
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1652
	.word	12
	.word	4
	.word	_Label_1653
	.word	-16
	.word	4
	.word	_Label_1654
	.word	-20
	.word	4
	.word	_Label_1655
	.word	-24
	.word	4
	.word	_Label_1656
	.word	-28
	.word	4
	.word	_Label_1657
	.word	-9
	.word	1
	.word	0
_Label_1650:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1651:
	.ascii	"Pself\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1657:
	.byte	'C'
	.ascii	"_temp_1643\0"
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
_Label_2881:
	push	r0
	sub	r1,1,r1
	bne	_Label_2881
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   _temp_1658 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1658 [entry ] into _temp_1659
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
!   _temp_1662 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1662 [entry ] into _temp_1663
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
!   Data Move: _temp_1661 = *_temp_1663  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1660 = _temp_1661 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1659 = _temp_1660  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1324,r13		! source line 1324
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
	.word	_Label_1664
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1666
	.word	12
	.word	4
	.word	_Label_1667
	.word	-12
	.word	4
	.word	_Label_1668
	.word	-16
	.word	4
	.word	_Label_1669
	.word	-20
	.word	4
	.word	_Label_1670
	.word	-24
	.word	4
	.word	_Label_1671
	.word	-28
	.word	4
	.word	_Label_1672
	.word	-32
	.word	4
	.word	0
_Label_1664:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1665:
	.ascii	"Pself\0"
	.align
_Label_1666:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1658\0"
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
_Label_2882:
	push	r0
	sub	r1,1,r1
	bne	_Label_2882
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0AS",r10
!   _temp_1673 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1673 [entry ] into _temp_1674
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
!   _temp_1677 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1677 [entry ] into _temp_1678
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
!   Data Move: _temp_1676 = *_temp_1678  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1675 = _temp_1676 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1674 = _temp_1675  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1333,r13		! source line 1333
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
	.word	_Label_1679
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	12
	.word	4
	.word	_Label_1682
	.word	-12
	.word	4
	.word	_Label_1683
	.word	-16
	.word	4
	.word	_Label_1684
	.word	-20
	.word	4
	.word	_Label_1685
	.word	-24
	.word	4
	.word	_Label_1686
	.word	-28
	.word	4
	.word	_Label_1687
	.word	-32
	.word	4
	.word	0
_Label_1679:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1673\0"
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
_Label_2883:
	push	r0
	sub	r1,1,r1
	bne	_Label_2883
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0AS",r10
!   _temp_1688 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1688 [entry ] into _temp_1689
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
!   _temp_1692 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1692 [entry ] into _temp_1693
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
!   Data Move: _temp_1691 = *_temp_1693  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1690 = _temp_1691 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1689 = _temp_1690  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1342,r13		! source line 1342
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
	.word	_Label_1694
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1696
	.word	12
	.word	4
	.word	_Label_1697
	.word	-12
	.word	4
	.word	_Label_1698
	.word	-16
	.word	4
	.word	_Label_1699
	.word	-20
	.word	4
	.word	_Label_1700
	.word	-24
	.word	4
	.word	_Label_1701
	.word	-28
	.word	4
	.word	_Label_1702
	.word	-32
	.word	4
	.word	0
_Label_1694:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1695:
	.ascii	"Pself\0"
	.align
_Label_1696:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1688\0"
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
_Label_2884:
	push	r0
	sub	r1,1,r1
	bne	_Label_2884
	mov	1347,r13		! source line 1347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0AS",r10
!   _temp_1703 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1703 [entry ] into _temp_1704
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
!   _temp_1707 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1707 [entry ] into _temp_1708
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
!   Data Move: _temp_1706 = *_temp_1708  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1705 = _temp_1706 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1704 = _temp_1705  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1351,r13		! source line 1351
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
	.word	_Label_1709
	.word	8		! total size of parameters
	.word	24		! frame size = 24
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
	.word	0
_Label_1709:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1710:
	.ascii	"Pself\0"
	.align
_Label_1711:
	.byte	'I'
	.ascii	"entry\0"
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
	.ascii	"_temp_1703\0"
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
_Label_2885:
	push	r0
	sub	r1,1,r1
	bne	_Label_2885
	mov	1356,r13		! source line 1356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0AS",r10
!   _temp_1718 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1718 [entry ] into _temp_1719
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
!   _temp_1722 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1722 [entry ] into _temp_1723
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
!   Data Move: _temp_1721 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1720 = _temp_1721 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1719 = _temp_1720  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1360,r13		! source line 1360
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
	.word	_Label_1724
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1725
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1726
	.word	12
	.word	4
	.word	_Label_1727
	.word	-12
	.word	4
	.word	_Label_1728
	.word	-16
	.word	4
	.word	_Label_1729
	.word	-20
	.word	4
	.word	_Label_1730
	.word	-24
	.word	4
	.word	_Label_1731
	.word	-28
	.word	4
	.word	_Label_1732
	.word	-32
	.word	4
	.word	0
_Label_1724:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1725:
	.ascii	"Pself\0"
	.align
_Label_1726:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1718\0"
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
_Label_2886:
	push	r0
	sub	r1,1,r1
	bne	_Label_2886
	mov	1365,r13		! source line 1365
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0AS",r10
!   _temp_1733 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1733 [entry ] into _temp_1734
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
!   _temp_1737 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1737 [entry ] into _temp_1738
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
!   Data Move: _temp_1736 = *_temp_1738  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1735 = _temp_1736 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1734 = _temp_1735  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
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
	.word	_Label_1739
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1741
	.word	12
	.word	4
	.word	_Label_1742
	.word	-12
	.word	4
	.word	_Label_1743
	.word	-16
	.word	4
	.word	_Label_1744
	.word	-20
	.word	4
	.word	_Label_1745
	.word	-24
	.word	4
	.word	_Label_1746
	.word	-28
	.word	4
	.word	_Label_1747
	.word	-32
	.word	4
	.word	0
_Label_1739:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1740:
	.ascii	"Pself\0"
	.align
_Label_1741:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1733\0"
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
_Label_2887:
	push	r0
	sub	r1,1,r1
	bne	_Label_2887
	mov	1374,r13		! source line 1374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0AS",r10
!   _temp_1748 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1748 [entry ] into _temp_1749
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
!   _temp_1752 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1752 [entry ] into _temp_1753
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
!   Data Move: _temp_1751 = *_temp_1753  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1750 = _temp_1751 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1749 = _temp_1750  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1754
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1755
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1756
	.word	12
	.word	4
	.word	_Label_1757
	.word	-12
	.word	4
	.word	_Label_1758
	.word	-16
	.word	4
	.word	_Label_1759
	.word	-20
	.word	4
	.word	_Label_1760
	.word	-24
	.word	4
	.word	_Label_1761
	.word	-28
	.word	4
	.word	_Label_1762
	.word	-32
	.word	4
	.word	0
_Label_1754:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1755:
	.ascii	"Pself\0"
	.align
_Label_1756:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1748\0"
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
_Label_2888:
	push	r0
	sub	r1,1,r1
	bne	_Label_2888
	mov	1383,r13		! source line 1383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   _temp_1763 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1763 [entry ] into _temp_1764
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
!   _temp_1767 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1767 [entry ] into _temp_1768
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
!   Data Move: _temp_1766 = *_temp_1768  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1765 = _temp_1766 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1764 = _temp_1765  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1769
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1770
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1771
	.word	12
	.word	4
	.word	_Label_1772
	.word	-12
	.word	4
	.word	_Label_1773
	.word	-16
	.word	4
	.word	_Label_1774
	.word	-20
	.word	4
	.word	_Label_1775
	.word	-24
	.word	4
	.word	_Label_1776
	.word	-28
	.word	4
	.word	_Label_1777
	.word	-32
	.word	4
	.word	0
_Label_1769:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1770:
	.ascii	"Pself\0"
	.align
_Label_1771:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1763\0"
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
_Label_2889:
	push	r0
	sub	r1,1,r1
	bne	_Label_2889
	mov	1392,r13		! source line 1392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1779 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1779 [0 ] into _temp_1780
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
!   _temp_1778 = _temp_1780		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1781 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1778  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1781  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1398,r13		! source line 1398
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
	.word	_Label_1782
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1784
	.word	-12
	.word	4
	.word	_Label_1785
	.word	-16
	.word	4
	.word	_Label_1786
	.word	-20
	.word	4
	.word	_Label_1787
	.word	-24
	.word	4
	.word	0
_Label_1782:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1783:
	.ascii	"Pself\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1778\0"
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
_Label_2890:
	push	r0
	sub	r1,1,r1
	bne	_Label_2890
	mov	1403,r13		! source line 1403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1788
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1788
	jmp	_Label_1789
_Label_1788:
! THEN...
	mov	1419,r13		! source line 1419
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1790
_Label_1789:
! ELSE...
	mov	1420,r13		! source line 1420
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1792		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1792
!	jmp	_Label_1791
_Label_1791:
! THEN...
	mov	1421,r13		! source line 1421
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1792:
! END IF...
_Label_1790:
! ASSIGNMENT STATEMENT...
	mov	1423,r13		! source line 1423
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
	mov	1424,r13		! source line 1424
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
	mov	1427,r13		! source line 1427
	mov	"\0\0WH",r10
_Label_1793:
!	jmp	_Label_1794
_Label_1794:
	mov	1427,r13		! source line 1427
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1797		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1797
!	jmp	_Label_1796
_Label_1796:
! THEN...
	mov	1429,r13		! source line 1429
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1798 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1798  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1429,r13		! source line 1429
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1797:
! IF STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0IF",r10
	mov	1432,r13		! source line 1432
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1802) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1801  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1801 then goto _Label_1800 else goto _Label_1799
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1799
	jmp	_Label_1800
_Label_1799:
! THEN...
	mov	1433,r13		! source line 1433
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1803 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1803  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1433,r13		! source line 1433
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1800:
! ASSIGNMENT STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0AS",r10
	mov	1436,r13		! source line 1436
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1805) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1804  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1804 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0WH",r10
_Label_1806:
!   if offset >= 8192 then goto _Label_1808		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1808
!	jmp	_Label_1807
_Label_1807:
	mov	1438,r13		! source line 1438
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1809 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1809  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1811		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1811
!	jmp	_Label_1810
_Label_1810:
! THEN...
	mov	1447,r13		! source line 1447
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1811:
! END WHILE...
	jmp	_Label_1806
_Label_1808:
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1793
_Label_1795:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1812
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1814
	.word	12
	.word	4
	.word	_Label_1815
	.word	16
	.word	4
	.word	_Label_1816
	.word	20
	.word	4
	.word	_Label_1817
	.word	-9
	.word	1
	.word	_Label_1818
	.word	-16
	.word	4
	.word	_Label_1819
	.word	-20
	.word	4
	.word	_Label_1820
	.word	-24
	.word	4
	.word	_Label_1821
	.word	-28
	.word	4
	.word	_Label_1822
	.word	-10
	.word	1
	.word	_Label_1823
	.word	-32
	.word	4
	.word	_Label_1824
	.word	-36
	.word	4
	.word	_Label_1825
	.word	-40
	.word	4
	.word	_Label_1826
	.word	-44
	.word	4
	.word	_Label_1827
	.word	-48
	.word	4
	.word	0
_Label_1812:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1813:
	.ascii	"Pself\0"
	.align
_Label_1814:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1815:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1816:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1817:
	.byte	'C'
	.ascii	"_temp_1809\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1822:
	.byte	'C'
	.ascii	"_temp_1801\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1824:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1825:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1826:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1827:
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
_Label_2891:
	push	r0
	sub	r1,1,r1
	bne	_Label_2891
	mov	1457,r13		! source line 1457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1828
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1828
	jmp	_Label_1829
_Label_1828:
! THEN...
	mov	1469,r13		! source line 1469
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1830
_Label_1829:
! ELSE...
	mov	1470,r13		! source line 1470
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1832		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1832
!	jmp	_Label_1831
_Label_1831:
! THEN...
	mov	1471,r13		! source line 1471
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1832:
! END IF...
_Label_1830:
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
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
	mov	1474,r13		! source line 1474
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
	mov	1475,r13		! source line 1475
	mov	"\0\0WH",r10
_Label_1833:
!	jmp	_Label_1834
_Label_1834:
	mov	1475,r13		! source line 1475
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1839		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1839
	jmp	_Label_1836
_Label_1839:
	mov	1477,r13		! source line 1477
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1841) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1840  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1840 then goto _Label_1838 else goto _Label_1836
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1836
	jmp	_Label_1838
_Label_1838:
	mov	1478,r13		! source line 1478
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1843) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1842  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1842 then goto _Label_1837 else goto _Label_1836
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1836
	jmp	_Label_1837
_Label_1836:
! THEN...
	mov	1479,r13		! source line 1479
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1837:
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0AS",r10
	mov	1481,r13		! source line 1481
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1845) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1844  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1844 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0WH",r10
_Label_1846:
!   if offset >= 8192 then goto _Label_1848		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1848
!	jmp	_Label_1847
_Label_1847:
	mov	1482,r13		! source line 1482
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1849 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1849  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1851		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1851
!	jmp	_Label_1850
_Label_1850:
! THEN...
	mov	1489,r13		! source line 1489
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1851:
! END WHILE...
	jmp	_Label_1846
_Label_1848:
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1833
_Label_1835:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1852
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1854
	.word	12
	.word	4
	.word	_Label_1855
	.word	16
	.word	4
	.word	_Label_1856
	.word	20
	.word	4
	.word	_Label_1857
	.word	-9
	.word	1
	.word	_Label_1858
	.word	-16
	.word	4
	.word	_Label_1859
	.word	-20
	.word	4
	.word	_Label_1860
	.word	-24
	.word	4
	.word	_Label_1861
	.word	-10
	.word	1
	.word	_Label_1862
	.word	-28
	.word	4
	.word	_Label_1863
	.word	-11
	.word	1
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
	.word	0
_Label_1852:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1853:
	.ascii	"Pself\0"
	.align
_Label_1854:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1855:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1856:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1857:
	.byte	'C'
	.ascii	"_temp_1849\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1861:
	.byte	'C'
	.ascii	"_temp_1842\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1863:
	.byte	'C'
	.ascii	"_temp_1840\0"
	.align
_Label_1864:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1865:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1866:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1867:
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
_Label_2892:
	push	r0
	sub	r1,1,r1
	bne	_Label_2892
	mov	1499,r13		! source line 1499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0IF",r10
	mov	1523,r13		! source line 1523
	mov	"\0\0SE",r10
!   _temp_1871 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1872) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1871  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1870  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1870 >= 4 then goto _Label_1869		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1869
!	jmp	_Label_1868
_Label_1868:
! THEN...
	mov	1526,r13		! source line 1526
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1869:
! IF STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1874		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1874
!	jmp	_Label_1873
_Label_1873:
! THEN...
	mov	1531,r13		! source line 1531
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1874:
! ASSIGNMENT STATEMENT...
	mov	1534,r13		! source line 1534
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
	mov	1536,r13		! source line 1536
	mov	"\0\0RE",r10
	mov	1536,r13		! source line 1536
	mov	"\0\0SE",r10
!   _temp_1877 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1876 = _temp_1877 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1878 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1879) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1876  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1878  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1875  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1875  (sizeInBytes=4)
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
	.word	_Label_1880
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1881
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1882
	.word	12
	.word	4
	.word	_Label_1883
	.word	16
	.word	4
	.word	_Label_1884
	.word	20
	.word	4
	.word	_Label_1885
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_1891
	.word	-36
	.word	4
	.word	_Label_1892
	.word	-40
	.word	4
	.word	_Label_1893
	.word	-44
	.word	4
	.word	0
_Label_1880:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1881:
	.ascii	"Pself\0"
	.align
_Label_1882:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1883:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1884:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1893:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_1894
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_1894:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1895
	.word	_sourceFileName
	.word	310		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_1895:
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
_Label_2893:
	push	r0
	sub	r1,1,r1
	bne	_Label_2893
	mov	1873,r13		! source line 1873
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1896 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1896  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1881,r13		! source line 1881
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
	mov	1882,r13		! source line 1882
	mov	"\0\0SE",r10
!   _temp_1898 = &semUsedInSynchMethods
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
	mov	1883,r13		! source line 1883
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
	mov	1884,r13		! source line 1884
	mov	"\0\0SE",r10
!   _temp_1900 = &diskBusy
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
	mov	1884,r13		! source line 1884
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
	.word	_Label_1901
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1902
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_1901:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1902:
	.ascii	"Pself\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1896\0"
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
_Label_2894:
	push	r0
	sub	r1,1,r1
	bne	_Label_2894
	mov	1889,r13		! source line 1889
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0SE",r10
!   _temp_1908 = &diskBusy
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
	mov	1903,r13		! source line 1903
	mov	"\0\0WH",r10
_Label_1909:
!	jmp	_Label_1910
_Label_1910:
	mov	1903,r13		! source line 1903
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0SE",r10
!   _temp_1912 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1913) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_1912  sizeInBytes=4
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
	mov	1907,r13		! source line 1907
	mov	"\0\0SE",r10
!   _temp_1914 = &semUsedInSynchMethods
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
	mov	1910,r13		! source line 1910
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1923 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_1917
	cmp	r1,2
	be	_Label_1918
	cmp	r1,3
	be	_Label_1919
	cmp	r1,4
	be	_Label_1920
	cmp	r1,5
	be	_Label_1921
	cmp	r1,6
	be	_Label_1922
	jmp	_Label_1915
! CASE 1...
_Label_1917:
! SEND STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0SE",r10
!   _temp_1924 = &diskBusy
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
	mov	1913,r13		! source line 1913
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_1918:
! CALL STATEMENT...
!   _temp_1925 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1925  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1915,r13		! source line 1915
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_1919:
! CALL STATEMENT...
!   _temp_1926 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1926  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1917,r13		! source line 1917
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_1920:
! CALL STATEMENT...
!   _temp_1927 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1927  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1919,r13		! source line 1919
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_1921:
! BREAK STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0BR",r10
	jmp	_Label_1916
! CASE 6...
_Label_1922:
! CALL STATEMENT...
!   _temp_1928 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1928  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1925,r13		! source line 1925
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_1915:
! CALL STATEMENT...
!   _temp_1929 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1929  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1927,r13		! source line 1927
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1916:
! END WHILE...
	jmp	_Label_1909
_Label_1911:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_1930
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1931
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1932
	.word	12
	.word	4
	.word	_Label_1933
	.word	16
	.word	4
	.word	_Label_1934
	.word	20
	.word	4
	.word	_Label_1935
	.word	-12
	.word	4
	.word	_Label_1936
	.word	-16
	.word	4
	.word	_Label_1937
	.word	-20
	.word	4
	.word	_Label_1938
	.word	-24
	.word	4
	.word	_Label_1939
	.word	-28
	.word	4
	.word	_Label_1940
	.word	-32
	.word	4
	.word	_Label_1941
	.word	-36
	.word	4
	.word	_Label_1942
	.word	-40
	.word	4
	.word	_Label_1943
	.word	-44
	.word	4
	.word	_Label_1944
	.word	-48
	.word	4
	.word	_Label_1945
	.word	-52
	.word	4
	.word	0
_Label_1930:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_1931:
	.ascii	"Pself\0"
	.align
_Label_1932:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1933:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1934:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1908\0"
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
	mov	1936,r13		! source line 1936
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1954,r13		! source line 1954
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
	mov	1955,r13		! source line 1955
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
	mov	1956,r13		! source line 1956
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
	mov	1957,r13		! source line 1957
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
	mov	1957,r13		! source line 1957
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
	.word	_Label_1946
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1948
	.word	12
	.word	4
	.word	_Label_1949
	.word	16
	.word	4
	.word	_Label_1950
	.word	20
	.word	4
	.word	_Label_1951
	.word	24
	.word	4
	.word	0
_Label_1946:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_1947:
	.ascii	"Pself\0"
	.align
_Label_1948:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1949:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1950:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1951:
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
_Label_2895:
	push	r0
	sub	r1,1,r1
	bne	_Label_2895
	mov	1962,r13		! source line 1962
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0SE",r10
!   _temp_1952 = &diskBusy
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
	mov	1975,r13		! source line 1975
	mov	"\0\0WH",r10
_Label_1953:
!	jmp	_Label_1954
_Label_1954:
	mov	1975,r13		! source line 1975
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0SE",r10
!   _temp_1956 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1957) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_1956  sizeInBytes=4
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
	mov	1978,r13		! source line 1978
	mov	"\0\0SE",r10
!   _temp_1958 = &semUsedInSynchMethods
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
	mov	1981,r13		! source line 1981
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1967 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_1961
	cmp	r1,2
	be	_Label_1962
	cmp	r1,3
	be	_Label_1963
	cmp	r1,4
	be	_Label_1964
	cmp	r1,5
	be	_Label_1965
	cmp	r1,6
	be	_Label_1966
	jmp	_Label_1959
! CASE 1...
_Label_1961:
! SEND STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0SE",r10
!   _temp_1968 = &diskBusy
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
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_1962:
! CALL STATEMENT...
!   _temp_1969 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1986,r13		! source line 1986
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_1963:
! CALL STATEMENT...
!   _temp_1970 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1988,r13		! source line 1988
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_1964:
! CALL STATEMENT...
!   _temp_1971 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1971  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1990,r13		! source line 1990
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_1965:
! BREAK STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0BR",r10
	jmp	_Label_1960
! CASE 6...
_Label_1966:
! CALL STATEMENT...
!   _temp_1972 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1972  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1996,r13		! source line 1996
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_1959:
! CALL STATEMENT...
!   _temp_1973 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1973  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1998,r13		! source line 1998
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1960:
! END WHILE...
	jmp	_Label_1953
_Label_1955:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_1974
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1975
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1976
	.word	12
	.word	4
	.word	_Label_1977
	.word	16
	.word	4
	.word	_Label_1978
	.word	20
	.word	4
	.word	_Label_1979
	.word	-12
	.word	4
	.word	_Label_1980
	.word	-16
	.word	4
	.word	_Label_1981
	.word	-20
	.word	4
	.word	_Label_1982
	.word	-24
	.word	4
	.word	_Label_1983
	.word	-28
	.word	4
	.word	_Label_1984
	.word	-32
	.word	4
	.word	_Label_1985
	.word	-36
	.word	4
	.word	_Label_1986
	.word	-40
	.word	4
	.word	_Label_1987
	.word	-44
	.word	4
	.word	_Label_1988
	.word	-48
	.word	4
	.word	_Label_1989
	.word	-52
	.word	4
	.word	0
_Label_1974:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_1975:
	.ascii	"Pself\0"
	.align
_Label_1976:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1977:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1978:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1952\0"
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
	mov	2007,r13		! source line 2007
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
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
	mov	2025,r13		! source line 2025
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
	mov	2026,r13		! source line 2026
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
	mov	2027,r13		! source line 2027
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
	mov	2027,r13		! source line 2027
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
	.word	_Label_1990
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1992
	.word	12
	.word	4
	.word	_Label_1993
	.word	16
	.word	4
	.word	_Label_1994
	.word	20
	.word	4
	.word	_Label_1995
	.word	24
	.word	4
	.word	0
_Label_1990:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_1991:
	.ascii	"Pself\0"
	.align
_Label_1992:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1993:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1994:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1995:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_1996
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
_Label_1996:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1997
	.word	_sourceFileName
	.word	333		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_1997:
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
_Label_2896:
	push	r0
	sub	r1,1,r1
	bne	_Label_2896
	mov	2038,r13		! source line 2038
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1998 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_1998  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2045,r13		! source line 2045
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
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
	mov	2047,r13		! source line 2047
	mov	"\0\0SE",r10
!   _temp_2000 = &fileManagerLock
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
	mov	2050,r13		! source line 2050
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
	mov	2051,r13		! source line 2051
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
	mov	2052,r13		! source line 2052
	mov	"\0\0SE",r10
!   _temp_2003 = &anFCBBecameFree
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
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
!   _temp_2004 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2006 = &_temp_2005
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2006 = _temp_2006 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2008 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_2897:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2897
!   _temp_2008 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2010:
!   Data Move: *_temp_2006 = _temp_2008  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_2898:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2898
!   _temp_2006 = _temp_2006 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2007 = _temp_2007 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2007) then goto _Label_2010
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2010
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2011 = &_temp_2005
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2899
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2899:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2004 = *_temp_2011  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_2900:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2900
! FOR STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2016 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2017 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2016  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2012:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2017 then goto _Label_2015		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2015
_Label_2013:
	mov	2055,r13		! source line 2055
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   _temp_2018 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2018 [i ] into _temp_2019
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
!   _temp_2020 = _temp_2019 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2020 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0SE",r10
!   _temp_2021 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2021 [i ] into _temp_2022
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
	mov	2058,r13		! source line 2058
	mov	"\0\0SE",r10
!   _temp_2024 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2024 [i ] into _temp_2025
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
!   _temp_2023 = _temp_2025		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2026 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2023  sizeInBytes=4
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
_Label_2014:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2012
! END FOR
_Label_2015:
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
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
	mov	2063,r13		! source line 2063
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
	mov	2064,r13		! source line 2064
	mov	"\0\0SE",r10
!   _temp_2029 = &anOpenFileBecameFree
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
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   _temp_2030 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2032 = &_temp_2031
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2032 = _temp_2032 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2034 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_2901:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2901
!   _temp_2034 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2036:
!   Data Move: *_temp_2032 = _temp_2034  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_2902:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2902
!   _temp_2032 = _temp_2032 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2033 = _temp_2033 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2033) then goto _Label_2036
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2036
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2037 = &_temp_2031
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2903
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2903:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2030 = *_temp_2037  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_2904:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2904
! FOR STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2042 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2043 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2042  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2038:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2043 then goto _Label_2041		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2041
_Label_2039:
	mov	2067,r13		! source line 2067
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   _temp_2044 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2044 [i ] into _temp_2045
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
!   _temp_2046 = _temp_2045 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2046 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   _temp_2048 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2048 [i ] into _temp_2049
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
!   _temp_2047 = _temp_2049		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2050 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2047  sizeInBytes=4
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
_Label_2040:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2038
! END FOR
_Label_2041:
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_2905:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2905
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   _temp_2052 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2053 = _temp_2052 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2053 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
	mov	2079,r13		! source line 2079
	mov	"\0\0SE",r10
!   _temp_2054 = &_P_Kernel_frameManager
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
	mov	2080,r13		! source line 2080
	mov	"\0\0SE",r10
!   _temp_2055 = &_P_Kernel_diskDriver
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
	mov	2080,r13		! source line 2080
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
	.word	_Label_2056
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2057
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2058
	.word	-12
	.word	4
	.word	_Label_2059
	.word	-16
	.word	4
	.word	_Label_2060
	.word	-20
	.word	4
	.word	_Label_2061
	.word	-24
	.word	4
	.word	_Label_2062
	.word	-28
	.word	4
	.word	_Label_2063
	.word	-32
	.word	4
	.word	_Label_2064
	.word	-36
	.word	4
	.word	_Label_2065
	.word	-40
	.word	4
	.word	_Label_2066
	.word	-44
	.word	4
	.word	_Label_2067
	.word	-48
	.word	4
	.word	_Label_2068
	.word	-52
	.word	4
	.word	_Label_2069
	.word	-56
	.word	4
	.word	_Label_2070
	.word	-60
	.word	4
	.word	_Label_2071
	.word	-64
	.word	4
	.word	_Label_2072
	.word	-68
	.word	4
	.word	_Label_2073
	.word	-72
	.word	4
	.word	_Label_2074
	.word	-100
	.word	28
	.word	_Label_2075
	.word	-104
	.word	4
	.word	_Label_2076
	.word	-108
	.word	4
	.word	_Label_2077
	.word	-392
	.word	284
	.word	_Label_2078
	.word	-396
	.word	4
	.word	_Label_2079
	.word	-400
	.word	4
	.word	_Label_2080
	.word	-404
	.word	4
	.word	_Label_2081
	.word	-408
	.word	4
	.word	_Label_2082
	.word	-412
	.word	4
	.word	_Label_2083
	.word	-416
	.word	4
	.word	_Label_2084
	.word	-420
	.word	4
	.word	_Label_2085
	.word	-424
	.word	4
	.word	_Label_2086
	.word	-428
	.word	4
	.word	_Label_2087
	.word	-432
	.word	4
	.word	_Label_2088
	.word	-436
	.word	4
	.word	_Label_2089
	.word	-440
	.word	4
	.word	_Label_2090
	.word	-444
	.word	4
	.word	_Label_2091
	.word	-448
	.word	4
	.word	_Label_2092
	.word	-452
	.word	4
	.word	_Label_2093
	.word	-456
	.word	4
	.word	_Label_2094
	.word	-460
	.word	4
	.word	_Label_2095
	.word	-500
	.word	40
	.word	_Label_2096
	.word	-504
	.word	4
	.word	_Label_2097
	.word	-508
	.word	4
	.word	_Label_2098
	.word	-912
	.word	404
	.word	_Label_2099
	.word	-916
	.word	4
	.word	_Label_2100
	.word	-920
	.word	4
	.word	_Label_2101
	.word	-924
	.word	4
	.word	_Label_2102
	.word	-928
	.word	4
	.word	_Label_2103
	.word	-932
	.word	4
	.word	_Label_2104
	.word	-936
	.word	4
	.word	_Label_2105
	.word	-940
	.word	4
	.word	_Label_2106
	.word	-944
	.word	4
	.word	0
_Label_2056:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2057:
	.ascii	"Pself\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2053\0"
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
	.ascii	"_temp_2048\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2106:
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
_Label_2906:
	push	r0
	sub	r1,1,r1
	bne	_Label_2906
	mov	2087,r13		! source line 2087
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   _temp_2107 = &fileManagerLock
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
!   _temp_2108 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2108  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2090,r13		! source line 2090
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2113 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2114 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2113  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2109:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2114 then goto _Label_2112		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2112
_Label_2110:
	mov	2091,r13		! source line 2091
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2115 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2115  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2092,r13		! source line 2092
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2093,r13		! source line 2093
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2116 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2094,r13		! source line 2094
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0SE",r10
!   _temp_2117 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2117 [i ] into _temp_2118
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
_Label_2111:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2109
! END FOR
_Label_2112:
! CALL STATEMENT...
!   _temp_2119 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2097,r13		! source line 2097
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0SE",r10
!   _temp_2120 = _function_189_printFCB
	set	_function_189_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2121 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2120  sizeInBytes=4
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
	mov	2099,r13		! source line 2099
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2122 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2122  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2100,r13		! source line 2100
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2127 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2128 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2127  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2123:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2128 then goto _Label_2126		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2126
_Label_2124:
	mov	2101,r13		! source line 2101
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2129 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2129  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2102,r13		! source line 2102
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2103,r13		! source line 2103
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2130 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2130  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2104,r13		! source line 2104
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2132 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2132 [i ] into _temp_2133
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
!   _temp_2131 = _temp_2133		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2131  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2105,r13		! source line 2105
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2134 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2134  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2106,r13		! source line 2106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   _temp_2135 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2135 [i ] into _temp_2136
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
_Label_2125:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2123
! END FOR
_Label_2126:
! CALL STATEMENT...
!   _temp_2137 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2137  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2109,r13		! source line 2109
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0SE",r10
!   _temp_2138 = _function_188_printOpen
	set	_function_188_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2139 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2138  sizeInBytes=4
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
	mov	2111,r13		! source line 2111
	mov	"\0\0SE",r10
!   _temp_2140 = &fileManagerLock
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
	mov	2111,r13		! source line 2111
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
	.word	_Label_2141
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2142
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2147
	.word	-28
	.word	4
	.word	_Label_2148
	.word	-32
	.word	4
	.word	_Label_2149
	.word	-36
	.word	4
	.word	_Label_2150
	.word	-40
	.word	4
	.word	_Label_2151
	.word	-44
	.word	4
	.word	_Label_2152
	.word	-48
	.word	4
	.word	_Label_2153
	.word	-52
	.word	4
	.word	_Label_2154
	.word	-56
	.word	4
	.word	_Label_2155
	.word	-60
	.word	4
	.word	_Label_2156
	.word	-64
	.word	4
	.word	_Label_2157
	.word	-68
	.word	4
	.word	_Label_2158
	.word	-72
	.word	4
	.word	_Label_2159
	.word	-76
	.word	4
	.word	_Label_2160
	.word	-80
	.word	4
	.word	_Label_2161
	.word	-84
	.word	4
	.word	_Label_2162
	.word	-88
	.word	4
	.word	_Label_2163
	.word	-92
	.word	4
	.word	_Label_2164
	.word	-96
	.word	4
	.word	_Label_2165
	.word	-100
	.word	4
	.word	_Label_2166
	.word	-104
	.word	4
	.word	_Label_2167
	.word	-108
	.word	4
	.word	_Label_2168
	.word	-112
	.word	4
	.word	_Label_2169
	.word	-116
	.word	4
	.word	0
_Label_2141:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2142:
	.ascii	"Pself\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2169:
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
_Label_2907:
	push	r0
	sub	r1,1,r1
	bne	_Label_2907
	mov	2116,r13		! source line 2116
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
	mov	2132,r13		! source line 2132
	mov	"\0\0SE",r10
!   _temp_2170 = &_P_Kernel_fileManager
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
	mov	2133,r13		! source line 2133
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2171
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2171
	jmp	_Label_2172
_Label_2171:
! THEN...
	mov	2134,r13		! source line 2134
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2172:
! SEND STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0SE",r10
!   _temp_2173 = &fileManagerLock
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
	mov	2139,r13		! source line 2139
	mov	"\0\0WH",r10
_Label_2174:
	mov	2139,r13		! source line 2139
	mov	"\0\0SE",r10
!   _temp_2177 = &openFileFreeList
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
!   if result==true then goto _Label_2175 else goto _Label_2176
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2176
	jmp	_Label_2175
_Label_2175:
	mov	2139,r13		! source line 2139
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_2178 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2179 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2178  sizeInBytes=4
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
	jmp	_Label_2174
_Label_2176:
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
	mov	2142,r13		! source line 2142
	mov	"\0\0SE",r10
!   _temp_2180 = &openFileFreeList
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
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2181 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2181 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2182 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2182 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2183 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2183 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0SE",r10
!   _temp_2184 = &fileManagerLock
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
	mov	2152,r13		! source line 2152
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
	.word	_Label_2185
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2187
	.word	12
	.word	4
	.word	_Label_2188
	.word	-12
	.word	4
	.word	_Label_2189
	.word	-16
	.word	4
	.word	_Label_2190
	.word	-20
	.word	4
	.word	_Label_2191
	.word	-24
	.word	4
	.word	_Label_2192
	.word	-28
	.word	4
	.word	_Label_2193
	.word	-32
	.word	4
	.word	_Label_2194
	.word	-36
	.word	4
	.word	_Label_2195
	.word	-40
	.word	4
	.word	_Label_2196
	.word	-44
	.word	4
	.word	_Label_2197
	.word	-48
	.word	4
	.word	_Label_2198
	.word	-52
	.word	4
	.word	_Label_2199
	.word	-56
	.word	4
	.word	0
_Label_2185:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2186:
	.ascii	"Pself\0"
	.align
_Label_2187:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2198:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2199:
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
_Label_2908:
	push	r0
	sub	r1,1,r1
	bne	_Label_2908
	mov	2157,r13		! source line 2157
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2185,r13		! source line 2185
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
	mov	2186,r13		! source line 2186
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2201		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2201
!	jmp	_Label_2200
_Label_2200:
! THEN...
	mov	2188,r13		! source line 2188
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2202 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2202  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2188,r13		! source line 2188
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2201:
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
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
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
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
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0WH",r10
_Label_2203:
!   if numFiles <= 0 then goto _Label_2205		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2205
!	jmp	_Label_2204
_Label_2204:
	mov	2198,r13		! source line 2198
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2206 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2206  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2199,r13		! source line 2199
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2207 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2207  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2201,r13		! source line 2201
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2208 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2208  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2203,r13		! source line 2203
	mov	"\0\0CA",r10
	call	_function_190_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2212 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2212 then goto _Label_2210		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2210
!	jmp	_Label_2211
_Label_2211:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2214
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
!   _temp_2213 = _temp_2214		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2213  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2206,r13		! source line 2206
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2209 else goto _Label_2210
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2210
	jmp	_Label_2209
_Label_2209:
! THEN...
	mov	2207,r13		! source line 2207
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0BR",r10
	jmp	_Label_2205
! END IF...
_Label_2210:
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2203
_Label_2205:
! IF STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2216		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2216
!	jmp	_Label_2215
_Label_2215:
! THEN...
	mov	2215,r13		! source line 2215
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2216:
! SEND STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0SE",r10
!   _temp_2217 = &fileManagerLock
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
	mov	2220,r13		! source line 2220
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2222 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2223 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2222  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2218:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2223 then goto _Label_2221		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2221
_Label_2219:
	mov	2220,r13		! source line 2220
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   _temp_2224 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2224 [i ] into _temp_2225
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
!   fcb = _temp_2225		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2229 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2228 = *_temp_2229  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2228 != start then goto _Label_2227		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2227
!	jmp	_Label_2226
_Label_2226:
! THEN...
	mov	2223,r13		! source line 2223
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2230 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2233 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2232 = *_temp_2233  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2231 = _temp_2232 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2230 = _temp_2231  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0SE",r10
!   _temp_2234 = &fileManagerLock
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
	mov	2225,r13		! source line 2225
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2227:
!   Increment the FOR-LOOP index variable and jump back
_Label_2220:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2218
! END FOR
_Label_2221:
! WHILE STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0WH",r10
_Label_2235:
	mov	2230,r13		! source line 2230
	mov	"\0\0SE",r10
!   _temp_2238 = &fcbFreeList
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
!   if result==true then goto _Label_2236 else goto _Label_2237
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2237
	jmp	_Label_2236
_Label_2236:
	mov	2230,r13		! source line 2230
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   _temp_2239 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2240 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2239  sizeInBytes=4
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
	jmp	_Label_2235
_Label_2237:
! ASSIGNMENT STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0AS",r10
	mov	2233,r13		! source line 2233
	mov	"\0\0SE",r10
!   _temp_2241 = &fcbFreeList
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
	mov	2236,r13		! source line 2236
	mov	"\0\0SE",r10
!   _temp_2242 = &fileManagerLock
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
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2243 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2243 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2244 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2244 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2245 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2245 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2250 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2249 = *_temp_2250  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2249 < 0 then goto _Label_2248		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2248
	jmp	_Label_2246
_Label_2248:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2251 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2251 ) then goto _Label_2247		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2247
!	jmp	_Label_2246
_Label_2246:
! THEN...
	mov	2243,r13		! source line 2243
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2252 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2252  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2243,r13		! source line 2243
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2247:
! RETURN STATEMENT...
	mov	2245,r13		! source line 2245
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
	.word	_Label_2253
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2254
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2255
	.word	12
	.word	4
	.word	_Label_2256
	.word	-12
	.word	4
	.word	_Label_2257
	.word	-16
	.word	4
	.word	_Label_2258
	.word	-20
	.word	4
	.word	_Label_2259
	.word	-24
	.word	4
	.word	_Label_2260
	.word	-28
	.word	4
	.word	_Label_2261
	.word	-32
	.word	4
	.word	_Label_2262
	.word	-36
	.word	4
	.word	_Label_2263
	.word	-40
	.word	4
	.word	_Label_2264
	.word	-44
	.word	4
	.word	_Label_2265
	.word	-48
	.word	4
	.word	_Label_2266
	.word	-52
	.word	4
	.word	_Label_2267
	.word	-56
	.word	4
	.word	_Label_2268
	.word	-60
	.word	4
	.word	_Label_2269
	.word	-64
	.word	4
	.word	_Label_2270
	.word	-68
	.word	4
	.word	_Label_2271
	.word	-72
	.word	4
	.word	_Label_2272
	.word	-76
	.word	4
	.word	_Label_2273
	.word	-80
	.word	4
	.word	_Label_2274
	.word	-84
	.word	4
	.word	_Label_2275
	.word	-88
	.word	4
	.word	_Label_2276
	.word	-92
	.word	4
	.word	_Label_2277
	.word	-96
	.word	4
	.word	_Label_2278
	.word	-100
	.word	4
	.word	_Label_2279
	.word	-104
	.word	4
	.word	_Label_2280
	.word	-108
	.word	4
	.word	_Label_2281
	.word	-112
	.word	4
	.word	_Label_2282
	.word	-116
	.word	4
	.word	_Label_2283
	.word	-120
	.word	4
	.word	_Label_2284
	.word	-124
	.word	4
	.word	_Label_2285
	.word	-128
	.word	4
	.word	_Label_2286
	.word	-132
	.word	4
	.word	_Label_2287
	.word	-136
	.word	4
	.word	_Label_2288
	.word	-140
	.word	4
	.word	_Label_2289
	.word	-144
	.word	4
	.word	_Label_2290
	.word	-148
	.word	4
	.word	_Label_2291
	.word	-152
	.word	4
	.word	_Label_2292
	.word	-156
	.word	4
	.word	_Label_2293
	.word	-160
	.word	4
	.word	0
_Label_2253:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2254:
	.ascii	"Pself\0"
	.align
_Label_2255:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2249\0"
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
	.ascii	"_temp_2241\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2287:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2288:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2289:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2290:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2291:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2292:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2293:
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
_Label_2909:
	push	r0
	sub	r1,1,r1
	bne	_Label_2909
	mov	2258,r13		! source line 2258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0IF",r10
!   _temp_2296 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2296 then goto _Label_2295		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2295
!	jmp	_Label_2294
_Label_2294:
! THEN...
	mov	2261,r13		! source line 2261
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2295:
! SEND STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   _temp_2297 = &fileManagerLock
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
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   _temp_2298 = &_P_Kernel_fileManager
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
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2299 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2299  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2300 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2303 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2302 = *_temp_2303  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2301 = _temp_2302 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2300 = _temp_2301  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2307 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2306 = *_temp_2307  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2306 > 0 then goto _Label_2305		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2305
!	jmp	_Label_2304
_Label_2304:
! THEN...
	mov	2268,r13		! source line 2268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   _temp_2308 = &openFileFreeList
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
	mov	2269,r13		! source line 2269
	mov	"\0\0SE",r10
!   _temp_2309 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2310 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2309  sizeInBytes=4
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
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2311 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2314 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2313 = *_temp_2314  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2312 = _temp_2313 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2311 = _temp_2312  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2318 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2317 = *_temp_2318  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2317 > 0 then goto _Label_2316		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2316
!	jmp	_Label_2315
_Label_2315:
! THEN...
	mov	2272,r13		! source line 2272
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   _temp_2319 = &fcbFreeList
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
	mov	2273,r13		! source line 2273
	mov	"\0\0SE",r10
!   _temp_2320 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2321 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
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
_Label_2316:
! END IF...
_Label_2305:
! SEND STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0SE",r10
!   _temp_2322 = &fileManagerLock
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
	mov	2276,r13		! source line 2276
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
	.word	_Label_2323
	.word	8		! total size of parameters
	.word	104		! frame size = 104
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
	.word	0
_Label_2323:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2324:
	.ascii	"Pself\0"
	.align
_Label_2325:
	.byte	'P'
	.ascii	"open\0"
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
	.ascii	"_temp_2317\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2306\0"
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
	.ascii	"_temp_2300\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2349:
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
_Label_2910:
	push	r0
	sub	r1,1,r1
	bne	_Label_2910
	mov	2281,r13		! source line 2281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2353 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2352 = *_temp_2353  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2352) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2354 = _temp_2352 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2354 ) then goto _Label_2351		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2351
!	jmp	_Label_2350
_Label_2350:
! THEN...
	mov	2287,r13		! source line 2287
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2359 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2358 = *_temp_2359  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2358) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2360 = _temp_2358 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2357 = *_temp_2360  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2357 >= 0 then goto _Label_2356		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2356
!	jmp	_Label_2355
_Label_2355:
! THEN...
	mov	2288,r13		! source line 2288
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2361 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2361  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2288,r13		! source line 2288
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2356:
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2363 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2362 = *_temp_2363  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2362) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2364 = _temp_2362 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2364 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2368 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2367 = *_temp_2368  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2367) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2369 = _temp_2367 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2366 = *_temp_2369  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2372 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2371 = *_temp_2372  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2371) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2373 = _temp_2371 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2370 = *_temp_2373  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2365 = _temp_2366 + _temp_2370		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2376 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2375 = *_temp_2376  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2375) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2377 = _temp_2375 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2374 = *_temp_2377  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2378 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2365  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2374  sizeInBytes=4
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
_Label_2351:
! RETURN STATEMENT...
	mov	2286,r13		! source line 2286
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
	.word	_Label_2379
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2380
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2381
	.word	12
	.word	4
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
	.word	0
_Label_2379:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2380:
	.ascii	"Pself\0"
	.align
_Label_2381:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2378\0"
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
	.ascii	"_temp_2375\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2352\0"
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
_Label_2911:
	push	r0
	sub	r1,1,r1
	bne	_Label_2911
	mov	2300,r13		! source line 2300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0SE",r10
!   _temp_2407 = &fileManagerLock
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
	mov	2316,r13		! source line 2316
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2413		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2413
!   _temp_2412 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2414
_Label_2413:
!   _temp_2412 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2414:
!   if _temp_2412 then goto _Label_2411 else goto _Label_2408
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2408
	jmp	_Label_2411
_Label_2411:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2417 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2416 = *_temp_2417  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2416 == 0 then goto _Label_2418		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2418
!   _temp_2415 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2419
_Label_2418:
!   _temp_2415 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2419:
!   if _temp_2415 then goto _Label_2410 else goto _Label_2408
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2408
	jmp	_Label_2410
_Label_2410:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2422 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2421 = *_temp_2422  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2421) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2423 = _temp_2421 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2420 = *_temp_2423  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2420 >= 0 then goto _Label_2409		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2409
!	jmp	_Label_2408
_Label_2408:
! THEN...
	mov	2317,r13		! source line 2317
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2424 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2424  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2317,r13		! source line 2317
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2409:
! ASSIGNMENT STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2425 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2425  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0WH",r10
_Label_2426:
!   if numBytes <= 0 then goto _Label_2428		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2428
!	jmp	_Label_2427
_Label_2427:
	mov	2320,r13		! source line 2320
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2329,r13		! source line 2329
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
	mov	2330,r13		! source line 2330
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
	mov	2334,r13		! source line 2334
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2432 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2431 = *_temp_2432  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2431 == sector then goto _Label_2430		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2430
!	jmp	_Label_2429
_Label_2429:
! THEN...
	mov	2335,r13		! source line 2335
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2433) then goto _runtimeErrorNullPointer
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
	mov	2337,r13		! source line 2337
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2436 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2435 = *_temp_2436  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2434 = sector + _temp_2435		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2438 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2437 = *_temp_2438  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2439 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2434  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2437  sizeInBytes=4
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
	mov	2340,r13		! source line 2340
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2440 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2440 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2441 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2441 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2430:
! ASSIGNMENT STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2443 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2442 = *_temp_2443  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2442 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   _temp_2444 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2444  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2344,r13		! source line 2344
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
	mov	2348,r13		! source line 2348
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2426
_Label_2428:
! SEND STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0SE",r10
!   _temp_2445 = &fileManagerLock
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
	mov	2359,r13		! source line 2359
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
	.word	_Label_2446
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2448
	.word	12
	.word	4
	.word	_Label_2449
	.word	16
	.word	4
	.word	_Label_2450
	.word	20
	.word	4
	.word	_Label_2451
	.word	24
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
	.word	_Label_2459
	.word	-44
	.word	4
	.word	_Label_2460
	.word	-48
	.word	4
	.word	_Label_2461
	.word	-52
	.word	4
	.word	_Label_2462
	.word	-56
	.word	4
	.word	_Label_2463
	.word	-60
	.word	4
	.word	_Label_2464
	.word	-64
	.word	4
	.word	_Label_2465
	.word	-68
	.word	4
	.word	_Label_2466
	.word	-72
	.word	4
	.word	_Label_2467
	.word	-76
	.word	4
	.word	_Label_2468
	.word	-80
	.word	4
	.word	_Label_2469
	.word	-84
	.word	4
	.word	_Label_2470
	.word	-88
	.word	4
	.word	_Label_2471
	.word	-92
	.word	4
	.word	_Label_2472
	.word	-96
	.word	4
	.word	_Label_2473
	.word	-100
	.word	4
	.word	_Label_2474
	.word	-104
	.word	4
	.word	_Label_2475
	.word	-9
	.word	1
	.word	_Label_2476
	.word	-10
	.word	1
	.word	_Label_2477
	.word	-108
	.word	4
	.word	_Label_2478
	.word	-112
	.word	4
	.word	_Label_2479
	.word	-116
	.word	4
	.word	_Label_2480
	.word	-120
	.word	4
	.word	_Label_2481
	.word	-124
	.word	4
	.word	_Label_2482
	.word	-128
	.word	4
	.word	0
_Label_2446:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2447:
	.ascii	"Pself\0"
	.align
_Label_2448:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2449:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2450:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2451:
	.byte	'I'
	.ascii	"numBytes\0"
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
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2475:
	.byte	'C'
	.ascii	"_temp_2415\0"
	.align
_Label_2476:
	.byte	'C'
	.ascii	"_temp_2412\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2478:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2479:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2480:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2481:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2482:
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
_Label_2912:
	push	r0
	sub	r1,1,r1
	bne	_Label_2912
	mov	2364,r13		! source line 2364
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0SE",r10
!   _temp_2483 = &fileManagerLock
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
	mov	2381,r13		! source line 2381
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2489		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2489
!   _temp_2488 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2490
_Label_2489:
!   _temp_2488 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2490:
!   if _temp_2488 then goto _Label_2487 else goto _Label_2484
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2484
	jmp	_Label_2487
_Label_2487:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2493 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2492 = *_temp_2493  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2492 == 0 then goto _Label_2494		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2494
!   _temp_2491 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2495
_Label_2494:
!   _temp_2491 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2495:
!   if _temp_2491 then goto _Label_2486 else goto _Label_2484
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2484
	jmp	_Label_2486
_Label_2486:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2497 = *_temp_2498  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2497) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2499 = _temp_2497 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2496 = *_temp_2499  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2496 >= 0 then goto _Label_2485		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2485
!	jmp	_Label_2484
_Label_2484:
! THEN...
	mov	2382,r13		! source line 2382
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2500 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2382,r13		! source line 2382
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2485:
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2501 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2501  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0WH",r10
_Label_2502:
!   if numBytes <= 0 then goto _Label_2504		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2504
!	jmp	_Label_2503
_Label_2503:
	mov	2385,r13		! source line 2385
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
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
	mov	2395,r13		! source line 2395
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
	mov	2399,r13		! source line 2399
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2508 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2507 = *_temp_2508  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2507 == sector then goto _Label_2506		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2506
!	jmp	_Label_2505
_Label_2505:
! THEN...
	mov	2401,r13		! source line 2401
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2509) then goto _runtimeErrorNullPointer
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
_Label_2506:
! ASSIGNMENT STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2511 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2510 = *_temp_2511  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2510 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
!   _temp_2512 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2512  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2404,r13		! source line 2404
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2516 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2515 = *_temp_2516  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2515 != sector then goto _Label_2514		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2514
!	jmp	_Label_2513
_Label_2513:
	jmp	_Label_2517
_Label_2514:
! ELSE...
	mov	2407,r13		! source line 2407
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2520
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2520
	jmp	_Label_2519
_Label_2520:
!   if bytesToMove != 8192 then goto _Label_2519		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2519
!	jmp	_Label_2518
_Label_2518:
	jmp	_Label_2521
_Label_2519:
! ELSE...
	mov	2411,r13		! source line 2411
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2524 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2523 = *_temp_2524  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2522 = sector + _temp_2523		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2526 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2525 = *_temp_2526  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2527 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2522  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2525  sizeInBytes=4
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
_Label_2521:
! END IF...
_Label_2517:
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2528 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2528 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2529 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2529 = 1  (sizeInBytes=1)
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
	mov	2420,r13		! source line 2420
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2502
_Label_2504:
! SEND STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0SE",r10
!   _temp_2530 = &fileManagerLock
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
	mov	2432,r13		! source line 2432
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
	.word	_Label_2531
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2533
	.word	12
	.word	4
	.word	_Label_2534
	.word	16
	.word	4
	.word	_Label_2535
	.word	20
	.word	4
	.word	_Label_2536
	.word	24
	.word	4
	.word	_Label_2537
	.word	-16
	.word	4
	.word	_Label_2538
	.word	-20
	.word	4
	.word	_Label_2539
	.word	-24
	.word	4
	.word	_Label_2540
	.word	-28
	.word	4
	.word	_Label_2541
	.word	-32
	.word	4
	.word	_Label_2542
	.word	-36
	.word	4
	.word	_Label_2543
	.word	-40
	.word	4
	.word	_Label_2544
	.word	-44
	.word	4
	.word	_Label_2545
	.word	-48
	.word	4
	.word	_Label_2546
	.word	-52
	.word	4
	.word	_Label_2547
	.word	-56
	.word	4
	.word	_Label_2548
	.word	-60
	.word	4
	.word	_Label_2549
	.word	-64
	.word	4
	.word	_Label_2550
	.word	-68
	.word	4
	.word	_Label_2551
	.word	-72
	.word	4
	.word	_Label_2552
	.word	-76
	.word	4
	.word	_Label_2553
	.word	-80
	.word	4
	.word	_Label_2554
	.word	-84
	.word	4
	.word	_Label_2555
	.word	-88
	.word	4
	.word	_Label_2556
	.word	-92
	.word	4
	.word	_Label_2557
	.word	-96
	.word	4
	.word	_Label_2558
	.word	-100
	.word	4
	.word	_Label_2559
	.word	-104
	.word	4
	.word	_Label_2560
	.word	-108
	.word	4
	.word	_Label_2561
	.word	-112
	.word	4
	.word	_Label_2562
	.word	-9
	.word	1
	.word	_Label_2563
	.word	-10
	.word	1
	.word	_Label_2564
	.word	-116
	.word	4
	.word	_Label_2565
	.word	-120
	.word	4
	.word	_Label_2566
	.word	-124
	.word	4
	.word	_Label_2567
	.word	-128
	.word	4
	.word	_Label_2568
	.word	-132
	.word	4
	.word	_Label_2569
	.word	-136
	.word	4
	.word	0
_Label_2531:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2532:
	.ascii	"Pself\0"
	.align
_Label_2533:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2534:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2536:
	.byte	'I'
	.ascii	"numBytes\0"
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
	.ascii	"_temp_2516\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2562:
	.byte	'C'
	.ascii	"_temp_2491\0"
	.align
_Label_2563:
	.byte	'C'
	.ascii	"_temp_2488\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2565:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2566:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2567:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2568:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2569:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2570
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2570:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2571
	.word	_sourceFileName
	.word	358		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2571:
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
_Label_2913:
	push	r0
	sub	r1,1,r1
	bne	_Label_2913
	mov	2468,r13		! source line 2468
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0AS",r10
	mov	2470,r13		! source line 2470
	mov	"\0\0SE",r10
!   _temp_2572 = &_P_Kernel_frameManager
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
	mov	2471,r13		! source line 2471
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2473,r13		! source line 2473
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
	.word	_Label_2573
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2574
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2575
	.word	-12
	.word	4
	.word	0
_Label_2573:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2574:
	.ascii	"Pself\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2572\0"
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
_Label_2914:
	push	r0
	sub	r1,1,r1
	bne	_Label_2914
	mov	2478,r13		! source line 2478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2576 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2576  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2479,r13		! source line 2479
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2480,r13		! source line 2480
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2577 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2481,r13		! source line 2481
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2482,r13		! source line 2482
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2578 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2578  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2483,r13		! source line 2483
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2484,r13		! source line 2484
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2579 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2579  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2485,r13		! source line 2485
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2486,r13		! source line 2486
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2580 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2580  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2487,r13		! source line 2487
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2488,r13		! source line 2488
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2581 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2581  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2489,r13		! source line 2489
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2490,r13		! source line 2490
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2491,r13		! source line 2491
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2491,r13		! source line 2491
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
	.word	_Label_2582
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2584
	.word	-12
	.word	4
	.word	_Label_2585
	.word	-16
	.word	4
	.word	_Label_2586
	.word	-20
	.word	4
	.word	_Label_2587
	.word	-24
	.word	4
	.word	_Label_2588
	.word	-28
	.word	4
	.word	_Label_2589
	.word	-32
	.word	4
	.word	0
_Label_2582:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2583:
	.ascii	"Pself\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2590
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2590:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2591
	.word	_sourceFileName
	.word	375		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2591:
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
_Label_2915:
	push	r0
	sub	r1,1,r1
	bne	_Label_2915
	mov	2502,r13		! source line 2502
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2592 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2592  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2503,r13		! source line 2503
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2504,r13		! source line 2504
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2593 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2593  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2505,r13		! source line 2505
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2595		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2595
!	jmp	_Label_2594
_Label_2594:
! THEN...
	mov	2507,r13		! source line 2507
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2507,r13		! source line 2507
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
	jmp	_Label_2596
_Label_2595:
! ELSE...
	mov	2509,r13		! source line 2509
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2597 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2597  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2509,r13		! source line 2509
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2596:
! RETURN STATEMENT...
	mov	2506,r13		! source line 2506
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
	.word	_Label_2598
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2599
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2600
	.word	-12
	.word	4
	.word	_Label_2601
	.word	-16
	.word	4
	.word	_Label_2602
	.word	-20
	.word	4
	.word	0
_Label_2598:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2599:
	.ascii	"Pself\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2592\0"
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
_Label_2916:
	push	r0
	sub	r1,1,r1
	bne	_Label_2916
	mov	2515,r13		! source line 2515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0SE",r10
!   _temp_2603 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2604 = _temp_2603 + 4
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
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
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
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_2605 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2606 = _temp_2605 + 4
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
	mov	2529,r13		! source line 2529
	mov	"\0\0RE",r10
	mov	2529,r13		! source line 2529
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2609 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2608  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2607  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2607  (sizeInBytes=1)
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
	.word	_Label_2610
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2611
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2612
	.word	12
	.word	4
	.word	_Label_2613
	.word	16
	.word	4
	.word	_Label_2614
	.word	-16
	.word	4
	.word	_Label_2615
	.word	-20
	.word	4
	.word	_Label_2616
	.word	-9
	.word	1
	.word	_Label_2617
	.word	-24
	.word	4
	.word	_Label_2618
	.word	-28
	.word	4
	.word	_Label_2619
	.word	-32
	.word	4
	.word	_Label_2620
	.word	-36
	.word	4
	.word	_Label_2621
	.word	-40
	.word	4
	.word	0
_Label_2610:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2611:
	.ascii	"Pself\0"
	.align
_Label_2612:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2613:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2616:
	.byte	'C'
	.ascii	"_temp_2607\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2621:
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
_Label_2917:
	push	r0
	sub	r1,1,r1
	bne	_Label_2917
	mov	2534,r13		! source line 2534
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0IF",r10
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_2625 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2626) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2625  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2624  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2624 then goto _Label_2623 else goto _Label_2622
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2622
	jmp	_Label_2623
_Label_2622:
! THEN...
	mov	2540,r13		! source line 2540
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2627 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2627  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2540,r13		! source line 2540
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2623:
! RETURN STATEMENT...
	mov	2542,r13		! source line 2542
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
	.word	_Label_2628
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2630
	.word	-16
	.word	4
	.word	_Label_2631
	.word	-20
	.word	4
	.word	_Label_2632
	.word	-24
	.word	4
	.word	_Label_2633
	.word	-9
	.word	1
	.word	_Label_2634
	.word	-28
	.word	4
	.word	0
_Label_2628:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2629:
	.ascii	"Pself\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2633:
	.byte	'C'
	.ascii	"_temp_2624\0"
	.align
_Label_2634:
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
_Label_2918:
	push	r0
	sub	r1,1,r1
	bne	_Label_2918
	mov	2547,r13		! source line 2547
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2638 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2637 = *_temp_2638  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2637) then goto _Label_2636
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2636
!	jmp	_Label_2635
_Label_2635:
! THEN...
	mov	2574,r13		! source line 2574
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2639 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2639  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2574,r13		! source line 2574
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2636:
! IF STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0IF",r10
	mov	2578,r13		! source line 2578
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2643) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2642  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2642 == 1112300152 then goto _Label_2641		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2641
!	jmp	_Label_2640
_Label_2640:
! THEN...
	mov	2579,r13		! source line 2579
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2644 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2644  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2579,r13		! source line 2579
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2641:
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
	mov	2584,r13		! source line 2584
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2645) then goto _runtimeErrorNullPointer
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
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
	mov	2585,r13		! source line 2585
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2646) then goto _runtimeErrorNullPointer
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
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
	mov	2586,r13		! source line 2586
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2647) then goto _runtimeErrorNullPointer
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
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
	mov	2587,r13		! source line 2587
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2648) then goto _runtimeErrorNullPointer
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
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
	mov	2588,r13		! source line 2588
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2649) then goto _runtimeErrorNullPointer
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
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
	mov	2589,r13		! source line 2589
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2650) then goto _runtimeErrorNullPointer
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
	mov	2592,r13		! source line 2592
	mov	"\0\0IF",r10
!   _temp_2653 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2653) then goto _Label_2652
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2652
!	jmp	_Label_2651
_Label_2651:
! THEN...
	mov	2593,r13		! source line 2593
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2654 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2654  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2652:
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
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
	mov	2600,r13		! source line 2600
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2656
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2656
!	jmp	_Label_2655
_Label_2655:
! THEN...
	mov	2601,r13		! source line 2601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2657 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2657  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2601,r13		! source line 2601
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2656:
! IF STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0IF",r10
!   _temp_2660 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2660) then goto _Label_2659
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2659
!	jmp	_Label_2658
_Label_2658:
! THEN...
	mov	2607,r13		! source line 2607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2661 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2661  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2607,r13		! source line 2607
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2659:
! IF STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0IF",r10
!   _temp_2664 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2664 then goto _Label_2663		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2663
!	jmp	_Label_2662
_Label_2662:
! THEN...
	mov	2611,r13		! source line 2611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2665 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2665  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2611,r13		! source line 2611
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2663:
! ASSIGNMENT STATEMENT...
	mov	2614,r13		! source line 2614
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
	mov	2617,r13		! source line 2617
	mov	"\0\0IF",r10
!   _temp_2668 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2668) then goto _Label_2667
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2667
!	jmp	_Label_2666
_Label_2666:
! THEN...
	mov	2618,r13		! source line 2618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2669 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2669  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2618,r13		! source line 2618
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2667:
! IF STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0IF",r10
!   _temp_2672 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2672 then goto _Label_2671		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2671
!	jmp	_Label_2670
_Label_2670:
! THEN...
	mov	2622,r13		! source line 2622
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2673 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2673  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2622,r13		! source line 2622
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2671:
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
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
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   _temp_2676 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2675 = _temp_2676 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2674 = _temp_2675 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2674 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2678		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2678
!	jmp	_Label_2677
_Label_2677:
! THEN...
	mov	2644,r13		! source line 2644
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2679 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2679  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2644,r13		! source line 2644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2680 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2680  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2645,r13		! source line 2645
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2681 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2681  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2646,r13		! source line 2646
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2678:
! SEND STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0SE",r10
!   _temp_2682 = &_P_Kernel_frameManager
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
	mov	2655,r13		! source line 2655
	mov	"\0\0IF",r10
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2686) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2685  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2685 == 707406378 then goto _Label_2684		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2684
!	jmp	_Label_2683
_Label_2683:
! THEN...
	mov	2656,r13		! source line 2656
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2687 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2687  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_2688 = &_P_Kernel_frameManager
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
	mov	2658,r13		! source line 2658
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2684:
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
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
	mov	2663,r13		! source line 2663
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2693 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2694 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2693  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2689:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2694 then goto _Label_2692		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2692
_Label_2690:
	mov	2663,r13		! source line 2663
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0AS",r10
	mov	2664,r13		! source line 2664
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
	mov	2667,r13		! source line 2667
	mov	"\0\0IF",r10
	mov	2667,r13		! source line 2667
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2698) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2697  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2697 then goto _Label_2696 else goto _Label_2695
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2695
	jmp	_Label_2696
_Label_2695:
! THEN...
	mov	2668,r13		! source line 2668
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2699 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2699  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0SE",r10
!   _temp_2700 = &_P_Kernel_frameManager
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
	mov	2670,r13		! source line 2670
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2696:
! SEND STATEMENT...
	mov	2672,r13		! source line 2672
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
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2691:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2689
! END FOR
_Label_2692:
! IF STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0IF",r10
	mov	2677,r13		! source line 2677
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2704) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2703  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2703 == 707406378 then goto _Label_2702		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2702
!	jmp	_Label_2701
_Label_2701:
! THEN...
	mov	2678,r13		! source line 2678
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2705 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2705  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0SE",r10
!   _temp_2706 = &_P_Kernel_frameManager
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
	mov	2680,r13		! source line 2680
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2702:
! FOR STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2711 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2712 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2711  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2707:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2712 then goto _Label_2710		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2710
_Label_2708:
	mov	2684,r13		! source line 2684
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
	mov	2685,r13		! source line 2685
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
	mov	2688,r13		! source line 2688
	mov	"\0\0IF",r10
	mov	2688,r13		! source line 2688
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2716) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2715  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2715 then goto _Label_2714 else goto _Label_2713
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2713
	jmp	_Label_2714
_Label_2713:
! THEN...
	mov	2689,r13		! source line 2689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2717 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2717  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2689,r13		! source line 2689
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   _temp_2718 = &_P_Kernel_frameManager
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
	mov	2691,r13		! source line 2691
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2714:
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2709:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2707
! END FOR
_Label_2710:
! IF STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0IF",r10
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2722) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2721  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2721 == 707406378 then goto _Label_2720		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2720
!	jmp	_Label_2719
_Label_2719:
! THEN...
	mov	2698,r13		! source line 2698
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2723 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2723  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2698,r13		! source line 2698
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0SE",r10
!   _temp_2724 = &_P_Kernel_frameManager
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
	mov	2700,r13		! source line 2700
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2720:
! ASSIGNMENT STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0AS",r10
	mov	2704,r13		! source line 2704
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
	mov	2708,r13		! source line 2708
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2711,r13		! source line 2711
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
	.word	_Label_2725
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2726
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2727
	.word	12
	.word	4
	.word	_Label_2728
	.word	-16
	.word	4
	.word	_Label_2729
	.word	-20
	.word	4
	.word	_Label_2730
	.word	-24
	.word	4
	.word	_Label_2731
	.word	-28
	.word	4
	.word	_Label_2732
	.word	-32
	.word	4
	.word	_Label_2733
	.word	-36
	.word	4
	.word	_Label_2734
	.word	-40
	.word	4
	.word	_Label_2735
	.word	-9
	.word	1
	.word	_Label_2736
	.word	-44
	.word	4
	.word	_Label_2737
	.word	-48
	.word	4
	.word	_Label_2738
	.word	-52
	.word	4
	.word	_Label_2739
	.word	-56
	.word	4
	.word	_Label_2740
	.word	-60
	.word	4
	.word	_Label_2741
	.word	-64
	.word	4
	.word	_Label_2742
	.word	-68
	.word	4
	.word	_Label_2743
	.word	-72
	.word	4
	.word	_Label_2744
	.word	-76
	.word	4
	.word	_Label_2745
	.word	-10
	.word	1
	.word	_Label_2746
	.word	-80
	.word	4
	.word	_Label_2747
	.word	-84
	.word	4
	.word	_Label_2748
	.word	-88
	.word	4
	.word	_Label_2749
	.word	-92
	.word	4
	.word	_Label_2750
	.word	-96
	.word	4
	.word	_Label_2751
	.word	-100
	.word	4
	.word	_Label_2752
	.word	-104
	.word	4
	.word	_Label_2753
	.word	-108
	.word	4
	.word	_Label_2754
	.word	-112
	.word	4
	.word	_Label_2755
	.word	-116
	.word	4
	.word	_Label_2756
	.word	-120
	.word	4
	.word	_Label_2757
	.word	-124
	.word	4
	.word	_Label_2758
	.word	-128
	.word	4
	.word	_Label_2759
	.word	-132
	.word	4
	.word	_Label_2760
	.word	-136
	.word	4
	.word	_Label_2761
	.word	-140
	.word	4
	.word	_Label_2762
	.word	-144
	.word	4
	.word	_Label_2763
	.word	-148
	.word	4
	.word	_Label_2764
	.word	-152
	.word	4
	.word	_Label_2765
	.word	-156
	.word	4
	.word	_Label_2766
	.word	-160
	.word	4
	.word	_Label_2767
	.word	-164
	.word	4
	.word	_Label_2768
	.word	-168
	.word	4
	.word	_Label_2769
	.word	-172
	.word	4
	.word	_Label_2770
	.word	-176
	.word	4
	.word	_Label_2771
	.word	-180
	.word	4
	.word	_Label_2772
	.word	-184
	.word	4
	.word	_Label_2773
	.word	-188
	.word	4
	.word	_Label_2774
	.word	-192
	.word	4
	.word	_Label_2775
	.word	-196
	.word	4
	.word	_Label_2776
	.word	-200
	.word	4
	.word	_Label_2777
	.word	-204
	.word	4
	.word	_Label_2778
	.word	-208
	.word	4
	.word	_Label_2779
	.word	-212
	.word	4
	.word	_Label_2780
	.word	-216
	.word	4
	.word	_Label_2781
	.word	-220
	.word	4
	.word	_Label_2782
	.word	-224
	.word	4
	.word	_Label_2783
	.word	-228
	.word	4
	.word	_Label_2784
	.word	-232
	.word	4
	.word	_Label_2785
	.word	-236
	.word	4
	.word	_Label_2786
	.word	-240
	.word	4
	.word	_Label_2787
	.word	-244
	.word	4
	.word	_Label_2788
	.word	-248
	.word	4
	.word	_Label_2789
	.word	-252
	.word	4
	.word	_Label_2790
	.word	-256
	.word	4
	.word	_Label_2791
	.word	-260
	.word	4
	.word	_Label_2792
	.word	-264
	.word	4
	.word	_Label_2793
	.word	-268
	.word	4
	.word	0
_Label_2725:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2726:
	.ascii	"Pself\0"
	.align
_Label_2727:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2724\0"
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
	.ascii	"_temp_2718\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2735:
	.byte	'C'
	.ascii	"_temp_2715\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2745:
	.byte	'C'
	.ascii	"_temp_2697\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2782:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2783:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2785:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2786:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2787:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2788:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2789:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2790:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2791:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2792:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2793:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
