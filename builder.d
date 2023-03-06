module builder;

import std.stdio;

class Burger {
    string bun;
    string patty;
    string cheese;

    this() {
        bun = null;
        patty = null;
        cheese = null;
    }

    public void setBun(string bun) {
        this.bun = bun;
    }

    public void setPatty(string patty) {
        this.patty = patty;
    }

    public void setCheese(string cheese) {
        this.cheese = cheese;
    }
}

class BurgerBuilder {
    Burger burger;

    this() {
        burger = new Burger();
    }

    public BurgerBuilder addBuns(string bunStyle) {
        burger.setBun(bunStyle);
        return this;
    }

    public BurgerBuilder addPatty(string pattyStyle) {
        burger.setPatty(pattyStyle);
        return this;
    }

    public BurgerBuilder addCheese(string cheeseStyle) {
        burger.setCheese(cheeseStyle);
        return this;
    }

    public Burger build() {
        return burger;
    }
}

void main() {

    Burger order1 = new BurgerBuilder()
                        .addBuns("sesame")
                        .addPatty("fish-patty")
                        .addCheese("swiss cheese")
                        .build();

    writeln("Order 1:");
    writeln("Bun: ", order1.bun);
    writeln("Patty: ", order1.patty);
    writeln("Cheese: ", order1.cheese);

}
