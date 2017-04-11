# Brainfuck2Vectors
Brainfuck implementation of two vectors which you can use as stack or as queue.

Same writing commands whether or not you use the vector as a stack or as a queue.

Same IO-cell whether you write to vector1 or vector2.

# IMPORTANT!
If you read two values from the vector, they are added to the IO-cell so if you do not want addition, add `[-]` before the reading function!

# EVEN MORE IMPORTANT!
When you call these functions, you must be at IO-cell, you dont need to set it up when writing first time but you need to be there if you write more data or if you read data. These functions will always return to the IO-cell even when vector is empty! DO NOT write anything anywhere after IO-cell!! It might break the functionality of the vectors! You can write anywhere before the IO-cell freely, it will not affect the functions.

# THE MOST IMPORTANT!
You cannot write value 0 to the list! That is because I intented this to be for handling user inputs (text). If you feel you need to input value 0, you could implement LoopHandle within the data (currently data structure is: IOdata 0 0 0 0 data1 copypath1 data2 copypath2 data1 copypath1 data2 copypath2 ...) if you would add loophandles: (IOdata 0 0 0 0 handle1 data1 copypath1 handle2 data2 copypath2 handle1 data1 copypath1 handle2 data2 copypath2 ...), set all loophandles to non-zero value and loop through the list using them instead of using the data!

Currently I have version under development which will allow zero-values written to the list but it will take some time as I need to rewrite most of the code.

# Example

    Read character to IOcell
    ,

    Write all characters to the vectors
    Every second to vector1 and others to vector2
    [
      [->>>>>>+<<<<<<]>>>>>[>[->>>>+<<<<]>>>]>[-<+>]<<<<<[<<<<]<,
      [->>>>>>>>+<<<<<<<<]>>>>>>>[>[->>>>+<<<<]>>>]>[-<+>]<<<<<[<<<<]<<<,
    ]

    Read first value from vector1 as queue and print it
    >>>>>[-<<<<<+>>>>>]>>>>[[-<<<<+>>>>]>>>>]<<<<<<<<[<<<<]<.

    Loop through whole vector1 and print them as queue
    [
      Clear current character
      [-]

      Read next value
      >>>>>[-<<<<<+>>>>>]>>>>[[-<<<<+>>>>]>>>>]<<<<<<<<[<<<<]<

      Print it
      .
    ]

    Print \r\n
    +++++++++++++.---.[-]

    Read first value from vector2 as queue and print it
    >>>>>>>[>>>>]<<<<[[-<<<+>>>]<<<<[>[-<<<<+>>>>]<<<<<]>[-<<<<+>>>>]<]<<<.

    Loop through whole vector2 and print them as stack
    [
      Clear current character
      [-]

      Read next value
      >>>>>>>[>>>>]<<<<[[-<<<+>>>]<<<<[>[-<<<<+>>>>]<<<<<]>[-<<<<+>>>>]<]<<<

      Print it
      .
    ]
With input `abcdefghijkl`, the output should be:

    acegik
    ljhfdb

Because every `index%2 == 0` value was read to vector1 and others to vector2. Then vector1 was printed out as a queue (in original order, acegik) and vector2 was printed as a stack (reverse of bdfhjl).

You can even mix stack/queue read commands.
