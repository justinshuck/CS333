header Main

  uses System, Thread, Synch

  functions
    main ()
    testSleepingBarberPart1()
    get_haircut()
    cut_hair()
    barber(timeToWait: int)
    customer(timeToWait: int)
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
