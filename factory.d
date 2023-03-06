module factory;

import std.stdio;
import std.string;

class Burger {

    string[] ingredients;

    this(string[] x) {
        ingredients = x;
    }

    public void print() {
        foreach (string key; ingredients)
            write(key ~ ", ");
        writefln("");
    }

}

class BurgerFactory {
    
    public Burger createCheeseBurger() {
        string[] ingredients = ["bun", "cheese", "beef-patty"];
        return new Burger(ingredients);
    }

    public Burger createDeluxeCheeseBurger() {
        string[] ingredients = ["bun", "tomatoes", "lettuce", "cheese", "beef-patty"];
        return new Burger(ingredients);
    }

    public Burger createVeganBurger() {
        string[] ingredients = ["bun", "special-sauce", "veggie-patty"];
        return new Burger(ingredients);
    }

}

int main() {

    printf("creating order 1 : ");
    Burger order1 = new BurgerFactory().createCheeseBurger();
    order1.print();

    printf("creating order 2 : ");
    Burger order2 = new BurgerFactory().createDeluxeCheeseBurger();
    order2.print();

    printf("creating order 3 : ");
    Burger order3 = new BurgerFactory().createVeganBurger();
    order3.print();

    return 0;
}
