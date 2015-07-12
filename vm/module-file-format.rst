Module File Format
==================

Modules are described in YAML documents as mappings. The following keys must be
present:

- *name*: the fully qualified name of the module,
- *imports*: the fully qualified names of the modules this module depends on,
- *unions*: the union types defined by this module,
- *structs*: the struct types defined by this module,
- *aliases*: the type aliases defined by this module,
- *subs*: the subroutines defined by this module,
- *foreignSubs*: the foreign subroutines declared by this module.
