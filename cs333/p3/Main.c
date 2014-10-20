code Main

  -- OS Class: Project 3
  --
  -- Justin Shuck
  --

-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler()
      testSleepingBarberPart1()   -- Tests part 1 of Proj 3
    endFunction



const
  CHAIRS = 5
  CUST_COUNT = 20
  BARB_COUNT = 1

var
  customers: Semaphore = new Semaphore 
  barbers:   Semaphore = new Semaphore
  mutexLock:     Semaphore = new Semaphore
  waitCounter:   int = 0
  threads: array[50] of Thread = new array of Thread {50 of new Thread}

function testSleepingBarberPart1()
    var 
      index: int
      total: int

    customers.Init(0)
    barbers.Init(0)
    mutexLock.Init(1)
    total = BARB_COUNT+CUST_COUNT

    --------------------------------------------------------------
    -- COMMENTED CODE: Useful for testing large numbers of
    -- Barbers/Customers. However I couldn't implement a
    -- concat of a string "Barber" with the index. Adding a static
    -- test below to demenstrate meaningful output usage.
    --------------------------------------------------------------

    -- for index = 0 to BARB_COUNT
    --    thread[index].Init("Barber ")
    --  endFor

    -- for index = BARB_COUNT to CUST_COUNT
    --    thread[index].Init("Customer ")
    --  endFor

    -- for index = 0 to BARB_COUNT
    --    thread[index].Fork(barber,50)
    --  endFor

    -- for index = BARB_COUNT to CUST_COUNT
    --  thread[index].Fork(customer, index * 50)
    --endFor

    print("-- PART 1: BEGIN TESTING -- \n")
    threads[0].Init("Barber #1")
    threads[1].Init("Customer #1")
    threads[2].Init("Customer #2")
    threads[3].Init("Customer #3")
    threads[4].Init("Customer #4")
    threads[5].Init("Customer #5")
    threads[6].Init("Customer #6")
    threads[7].Init("Customer #7")
    threads[8].Init("Customer #8")
    threads[9].Init("Customer #9")
    threads[10].Init("Customer #10")
    threads[11].Init("Customer #11")
    threads[12].Init("Customer #12")
    threads[13].Init("Customer #13")
    threads[14].Init("Customer #14")
    threads[15].Init("Customer #15")
    threads[16].Init("Customer #16")
    threads[17].Init("Customer #17")
    threads[18].Init("Customer #18")
    threads[19].Init("Customer #19")
    threads[20].Init("Customer #20")

    threads[0].Fork(barber, 50)

    -- Iterate over the customers
    total = CUST_COUNT + BARB_COUNT - 1
    for index = BARB_COUNT to 20
      threads[index].Fork(customer, index * 50)
    endFor

    ThreadFinish()
    print("-- PART 1: END TESTING -- \n")
endFunction


-- BARBER
function barber(timeToWait: int)
    print("New Barber: ")
    print(currentThread.name)
    print("\n\n")

    wait(timeToWait)


    while (true)
        customers.Down()    
        mutexLock.Down()
        waitCounter = waitCounter - 1    
        barbers.Up()
        mutexLock.Up()
        cut_hair()
    endWhile
  endFunction

 
-- CUSTOMER
function customer(timeToWait: int)
    wait(timeToWait)    -- Wait a specific amount of time before a 'new' customer arrives
    print("New Customer Has Arrived: ")
    print(currentThread.name)
    print("\n")
    mutexLock.Down()
    -- If there is no one waiting, wake up the barber and get haircut/take a seat
    if (waitCounter < CHAIRS)  
        waitCounter = waitCounter + 1
        customers.Up()
        mutexLock.Up()            
        barbers.Down()        
        get_haircut()     
    -- The shop is full (NO seats)    
    else
        mutexLock.Up()
        print("--> SHOP FULL: ")
        print(currentThread.name)
        print(" will now leave the store.\n\n")
    endIf
  endFunction

-- Dummy function that just waits x-time
function wait(timeToWait: int)
    var index: int
    for index = 1 to timeToWait
      endFor
  endFunction

-- Print Helper Function that shows that someone is getting their haircut
function get_haircut()
    print("----> ")
    print(currentThread.name)
    print(" is getting_haircut! \n")
  endFunction

-- Print Helper Function that shows that a barber is cutting hair
function cut_hair()
    print("-------------> ")
    print(currentThread.name)
    print(" is cutting_hair! \n")
    wait(100)
    print("------------->")
    print(currentThread.name)
    print(" finished cutting_hair! \n")
  endFunction
endCode