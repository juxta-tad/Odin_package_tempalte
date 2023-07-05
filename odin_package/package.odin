package odin_package

import "core:fmt"

//context related
package_ctx: Context
package_context := &package_ctx

//global variables are for context indepentand values

Context :: struct {
    //values here are context dependant
    value: string,
}

create_context :: proc() -> (ctx: ^Context) {
    ctx = new(Context)
    return
}

get_context :: proc() -> (ctx: ^Context) {
    return package_context
}

set_package_context :: proc(ctx: ^Context) {
    package_context = ctx
}

//example package code

print_value :: proc(ctx := package_context) {
    fmt.println(ctx.value)
}

set_value :: proc(value: string, ctx := package_context) {
    ctx.value = value
}