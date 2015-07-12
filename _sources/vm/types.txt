Types
=====

There is a close mapping between types in Mill and in the VM.

Type Descriptors
----------------

Types are referred to using *type descriptors*. Type descriptors adhere to the
following grammar::

    type-descriptor = string-type-descriptor
                    | tuple-type-descriptor
                    | subroutine-type-descriptor
                    | named-type-descriptor
                    ;

    string-type-descriptor = "S" ;

    tuple-type-descriptor = "T" { type-descriptor }  ";" ;

    subroutine-type-descriptor = "F" { type-descriptor } type-descriptor ";" ;

    named-type-descriptor = "N" { «any character except ';'» } ";" ;

Type descriptors must be a valid ASCII encoding and must not contain any
whitespace.
