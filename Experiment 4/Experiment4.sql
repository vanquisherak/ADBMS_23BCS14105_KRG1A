/*

Keys: A Single Attribute or a Collection or multiple attributes

1. Super Key = Collection of all keys that defines table uniquely.

Some keys are chosen from Super keys which are Minimal in nature -> these are Candidate keys.
Minimal keys are the keys which can be used to identify table record
eg. when A can retrieve a record, AB can too, so we prefer just A to save computational power.

2. Composite keys = key that uses two or more attributes to identify each record
3. Primary key = Column or set of columns that uniquely identifies each record in a table.


# FUNCTIONAL DEPENDENCY

A -> B
A functionally determines B OR B is functionally dependent on A


# FINDING CLOSURES

E.G => R(A, B, C)
FDs => AB -> C, B -> C

Closure of A = A+ -> A
Closure of B = B+ -> B, C
Closure of C = C+ -> C
Closure of AB = AB+ -> A, B, C

NOTE: Any Closure that determines all the the relation elements

    Any element from the relation if missing in Functional Dependents -> are eligible to be a part of Cadidate Keys

    E.g, R(A, B, C, D)
        A -> B
        B -> C
        C -> D

        A+ -> A, B, C, D (Candidate key)


# Prime Attributes -> Part of Candidate keys
# Non Prime Attributes -> Not part of Candidate keys

# NORMALIZATION FORMS

1NF = NO MULTIVALUED ATTRIBUTES 
    A record can't contain more than 1 values


2NF = NO PARTIAL DEPENDENCY
    Partial Dependency -> Any proper subset of Candidate key if determines NPAs.

3NF = i. IF A -> B
        if A is Super key or B is Prime Attribute
            then Dependency is in 3NF.

      ii. All Prime Attributes of Relation are Prime -> No NPAs -> 3NF

BCNF = Strict form of 3NF
    if A -> B
    and A is Super Key, then Dependency is in BCNF.



    4th Experiment
        6 QUESTIONS IN TOTAL
            FIND THE CLOSURE
            FIND THE PA AND NPA
            FIND THE NF WITH EXPLANATION
*/

