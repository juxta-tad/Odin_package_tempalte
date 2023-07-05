package main

import "core:fmt"
import "odin_package"

main :: proc() {
	odin_package.set_value("i dont need to init a context")
	odin_package.print_value()


	//getting the default context is optional
	default_context := odin_package.get_context()
	odin_package.set_value("hello_world")
	odin_package.print_value()

	new_context := odin_package.create_context()
	odin_package.set_package_context(new_context)
	odin_package.set_value("hello_friend")
	odin_package.print_value()

	//now we can swap between two or more contexts
	odin_package.set_package_context(default_context)
	odin_package.print_value()
	odin_package.set_package_context(new_context)
	odin_package.print_value()
	odin_package.set_package_context(default_context)
	odin_package.print_value()

    //also you dont need to set the global variable everytime you want to change contexts
    //although for bigger use of the context its recomened to change 
	newer_context := odin_package.create_context()
    odin_package.set_value("hey!",newer_context)
    odin_package.print_value(newer_context)

    //still on the default context
    odin_package.print_value()

}
