header Main

  uses System, Thread, Synch

  functions
    main ()
    testSleepingBarberPart1()
    get_haircut(custNum: int)
    cut_hair(custNum: int)
    barber(timeToWait: int)
    customer(id: int)
    wait(timeToWait: int)


class GameParlor
    superclass Object
    fields
      monitoringLock: Mutex
      firstInLine: Condition
      restOfLine: Condition
      numWaitingGroups: int
      numDiceLeft: int
    methods
      Init()
      print(printString: String, num: int)
      getDice(diceNeeded: int)
      releaseDice(diceReturned: int)
  endClass

endHeader
