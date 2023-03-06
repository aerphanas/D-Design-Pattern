module singleton;

import std.stdio;

class ApplicationScoped {
    static ApplicationScoped instance;
    bool isLoggedIn = false;

    private this() {
        isLoggedIn = false;
    }

    public static ApplicationScoped getAppState() {
        if (instance is null)
            instance = new ApplicationScoped();
        return instance;
    }

    public bool getIsLoggedIn() {
        return isLoggedIn;
    }

    public void setIsLoggedIn(bool isLoggedIn) {
        this.isLoggedIn = isLoggedIn;
    }
}

int main() {
    ApplicationScoped appstate1 = ApplicationScoped.getAppState();
    writefln("app state 1 is : %s", appstate1.getIsLoggedIn());

    ApplicationScoped appstate2 = ApplicationScoped.getAppState();
    appstate1.setIsLoggedIn(true);

    writefln("app state 1 is : %s", appstate1.getIsLoggedIn());
    writefln("app state 2 is : %s", appstate2.getIsLoggedIn());

    return 0;
}
