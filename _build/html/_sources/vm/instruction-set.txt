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
