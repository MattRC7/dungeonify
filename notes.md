# Some Notes

We represent every node by 2 characters `XY`, where `X` represents the type/style of room, and `Y`
is a 4-bit hex number between 0 - 15. 

`[room-style][NESW]`

Rules can look like:

```
    N,S,E,W
    A0000 -> transforms into any room type with certain probabilities
    A0000 -> A1000,A0010 /* closed */
    A1000 -> only go to room with 3rd bit set (A??1?)
        A1000 -> (n%) A0010
        A1000 -> (n%) A0110
        A1000 -> (n%) A1110
        ...
    A0100 -> only go to room with 4th bit set (A???1)
    ...
```

```
    A000 -> A1000,A0010 -> (A1100,A0001),(A0010) -> (A1100,(A0011,A1000)),(A0010)
```

```
    A0000 -> A1000 N A0010
          -> A1100 (E A0001) N A0010
          -> A1100 (E A0011 (S A1000)) N A0010
```

```
    |---|
    |   |
    |  _|
     ||
    |- -| |---|
    |    =    |
    |___| |___|

->

    |---|
    |   |
    |  _|
     ||
    |- -| |---|
    |    =    |
    |___| |_ _|
           ||_
          |   |
          |___|


```

```python

```