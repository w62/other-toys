package main

import "core:fmt"

Rectangle :: struct {
  x: f32,
  y: f32,
  width: f32,
  height: f32,
}

Person :: struct {
    name: string,
    health: int,
    age: int,
    number_of_teeth: int,
    height_meters: f32,
}

Couple_Data :: struct {
    person_1: Person,
    person_2: Person,
}

couple_data := Couple_Data {
    person_1 = {
        name = "Hans",
        age = 65,
    },
    person_2 = {
        name = "Maj=Britt",
        age = 50,
    },
}

aliasing_example :: proc(cd: ^Couple_Data, person: Person) {
    local_person := person
    cd.person_1 = {
        name = "This modifies 'person' too",
    }

    fmt.println(person.name) // Prints "This modifies 'person' too"
    fmt.println(local_person.name) // Prints "This modifies 'person' too"
}

main::proc() {
    lots_of_ints: [10000000]int
    aliasing_example(&couple_data, couple_data.person_1)
    fmt.println("Hellope!")
    do_stuff()
}

do_stuff :: proc () {
 @static    local_variable: int

    print_message :: proc(msg: string) {
        fmt.println(msg)
        fmt.println(local_variable)
    }

    print_message("Hellope from do_stuff()")
}


divide_numbers :: proc (n, d: f32) -> f32 {
//    n = n /d
    return n
}


