WRITE MEMORY 1
  Move iodata to first cells copypath
  [->>>>>>+<<<<<<]
  Go to first cells data
  >>>>>
  [
    Go to copypath
    >
    Move value to next copypath
    [->>>>+<<<<]
    Move to next cells data
    >>>
  ]
  Move value from copypath to data
  >[-<+>]<
  Go to first cell
  <<<<[<<<<]
  Go to iodata
  <
  
  
  
  
WRITE MEMORY 2
  Move iodata to first cells copypath
  [->>>>>>>>+<<<<<<<<]
  Go to first cells data
  >>>>>>>
  [
    Go to copypath
    >
    Move value to next copypath
    [->>>>+<<<<]
    Move to next cells data
    >>>
  ]
  Move value from copypath to data
  >[-<+>]<
  Go to first cell
  <<<<[<<<<]
  Go to iodata
  <<<
  
  
  
  
READ STACK 1
  Go to last data
  >>>>>[>>>>]<<<<
  If list is not empty
  [
    Move it to previous copypath
    [-<<<+>>>]
    Go to last cell
    <<<<
    [
      Go to copypath
      >
      Copy it to previous copypath
      [-<<<<+>>>>]
      Go to previous data
      <<<<<
    ]
    Go to moved data
    >
    Move it to iodata
    [-<<+>>]
    Go to first null
    <
  ]
  Go to iodata
  <
  
  
  
  
READ STACK 2
  >>>>>>>[>>>>]<<<<
  If list is not empty
  [
    Move it to previous copypath
    [-<<<+>>>]
    Go to last cell
    <<<<
    [
      Go to copypath
      >
      Copy it to previous copypath
      [-<<<<+>>>>]
      Go to previous data
      <<<<<
    ]
    Go to moved data
    >
    Move it to iodata
    [-<<<<+>>>>]
    Go to first null
    <
  ]
  Go to iodata
  <<<
  
  
  
  
READ QUEUE 1
  Go to first data
  >>>>>
  Move it to iodata
  [-<<<<<+>>>>>]
  Go to next cell
  >>>>
  [
    Move it backwards
    [-<<<<+>>>>]
    Go to next data
    >>>>
  ]
  Go to iodata
  <<<<<<<<[<<<<]<
  
  
  
  
READ QUEUE 2
  Go to first data
  >>>>>>>
  Move it to iodata
  [-<<<<<<<+>>>>>>>]
  Go to next cell
  >>>>
  [
    Move it backwards
    [-<<<<+>>>>]
    Go to next data
    >>>>
  ]
  Go to iodata
  <<<<<<<<[<<<<]<<<
