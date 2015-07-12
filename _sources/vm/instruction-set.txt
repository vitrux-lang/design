Instruction Set
===============

Mill instructions operate on Mill values, local variables and a per-thread
evaluation stack.

.. caution::
   There is currently no bytecode verification step. Any attempt to execute an
   invalid instruction (including ill-typed combinations of instructions)
   results in undefined behavior.

Instructions
------------

brk
~~~

Encoding
''''''''

::

    { opcode: brk }

Evaluation Stack
''''''''''''''''

… → …

Description
'''''''''''

The ``brk`` instruction advances the program counter, pauses execution of the
performing thread, and notifies the debugger. If the VM is not attached to a
debugger, it is terminated.

call
~~~~

Encoding
''''''''

::

    { opcode: call, arguments: *arguments }

Evaluation Stack
''''''''''''''''

…, [argument 1, [argument 2 …]] → returnValue …

Description
'''''''''''

The ``call`` instruction advances the program counter, pops ``*arguments``
arguments off the stack, pops the callee off the stack, pushes a new stack
frame onto the top of the call stack with the start of the body of the callee
as the program counter and the arguments popped off the stack as arguments.
The argument last popped off the stack is the first argument passed to the
callee. When the callee returns, its return value is pushed onto the stack.
