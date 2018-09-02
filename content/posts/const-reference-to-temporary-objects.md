+++ 
date = 2018-09-02T18:24:40+02:00
title = "Const References to Temporary Objects"
tags = ["programming", "development"]
categories = ["Programming"]
+++

Consider the following code snippet:

```cpp
#include <iostream>

int GetInt() {
    int x = 1;
    return x;
}

int main() {
    const int& x = GetInt();
    std::cout << x << std::endl;
    return 0;
}
```

In particular, pay attention to line #9. Is it guaranteed to be safe?

In this case, the answer is yes. The C++ standard *guarantees* that binding a
temporary to a const reference on the stack, extends the lifetime of the
temporary to the lifetime of the const reference. This has been covered in
[GotW #88](https://herbsutter.com/2008/01/01/gotw-88-a-candidate-for-the-most-important-const/).

But is it *always* safe to declare local variables as const references, whenever
you can?

Well, this is C++, so the answer is: It depends :)

Consider this code snippet:

```cpp
#include <iostream>
#include <string>

struct Container {
    std::string s;

    Container() {
        s = "Init";
        std::cout << "Constructed" << std::endl;
    }

    ~Container() {
        s = "UNSAFE";
        std::cout << "Destructed" << std::endl;
    }

    const std::string& GetS() const {
        return s;
    }
};

int main() {
    const std::string& s = Container().GetS();
    std::cout << s << std::endl;

    return 0;
}
```

What is the output? Is line 23 always safe? It create a temporary |Container()|
and then calls a member function on that temporary, which in turn returns a
const reference to a member variable.

The answer is *NO!* In fact [the output](https://ideone.com/Tqg6xv) is:

```
Constructed
Destructed
UNSAFE
```

Turns out that the temporary lifetime extension rule applies only to *direct*
references to temporary objects, not to references obtained indirectly via a
member function. e.g. consider this:

```cpp
#include <iostream>
#include <string>

struct Container {
    std::string s;

    Container() {
        s = "Init";
        std::cout << "Constructed" << std::endl;
    }

    ~Container() {
        s = "UNSAFE";
        std::cout << "Destructed" << std::endl;
    }

    const std::string& GetS() const {
        return s;
    }
};

int main() {
    const std::string& s = Container().s;
    std::cout << s << std::endl;

    return 0;
}
```

It does a similar thing except line 23 takes a direct reference to the member
variable. Is this safe?

In this case, the answer is *YES!*. [The output](https://ideone.com/2XfAE9) is:

```
Constructed
Init
Destructed
```

i.e. the destruction of the temporary |Container()| is held off until
|const std::string& s| can be safely destructed.

Note however, that this is limited to *const* references and not ordinary
references. This will not compile:

```cpp
#include <iostream>
#include <string>

struct Container {
    std::string s;

    Container() {
        s = "Init";
        std::cout << "Constructed" << std::endl;
    }

    ~Container() {
        s = "UNSAFE";
        std::cout << "Destructed" << std::endl;
    }

    const std::string& GetS() const {
        return s;
    }
};

int main() {
    std::string& s = Container().GetS();
    std::cout << s << std::endl;

    return 0;
}
```

Check line 23. It is an ordinary reference and not a const reference.

## Further Reading

Check out [TotW #101](https://abseil.io/tips/101) and
[TotW #107](https://abseil.io/tips/107).
["Tips of the Week (TotW)"](https://abseil.io/tips/) is a Google-internal
publication, which is gradually being released into the public. Do check them
out.
