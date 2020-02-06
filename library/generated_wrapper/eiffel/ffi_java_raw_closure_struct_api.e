note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class FFI_JAVA_RAW_CLOSURE_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	tramp: POINTER
			-- Access member `tramp`
		require
			exists: exists
		do
			Result := c_tramp (item)
		ensure
			result_correct: Result = c_tramp (item)
		end

	cif: detachable FFI_CIF_STRUCT_API 
			-- Access member `cif`
		require
			exists: exists
		do
			if attached c_cif (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_cif (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_cif (item) 
		end

	set_cif (a_value: FFI_CIF_STRUCT_API) 
			-- Set member `cif`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_cif (item, a_value.item)
		ensure
			cif_set: attached cif as l_value implies l_value.item = a_value.item
		end

	translate_args: POINTER
			-- Access member `translate_args`
		require
			exists: exists
		do
			Result := c_translate_args (item)
		ensure
			result_correct: Result = c_translate_args (item)
		end

	set_translate_args (a_value: POINTER) 
			-- Change the value of member `translate_args` to `a_value`.
		require
			exists: exists
		do
			set_c_translate_args (item, a_value)
		ensure
			translate_args_set: a_value = translate_args
		end

	this_closure: POINTER
			-- Access member `this_closure`
		require
			exists: exists
		do
			Result := c_this_closure (item)
		ensure
			result_correct: Result = c_this_closure (item)
		end

	set_this_closure (a_value: POINTER) 
			-- Change the value of member `this_closure` to `a_value`.
		require
			exists: exists
		do
			set_c_this_closure (item, a_value)
		ensure
			this_closure_set: a_value = this_closure
		end

	fun: POINTER
			-- Access member `fun`
		require
			exists: exists
		do
			Result := c_fun (item)
		ensure
			result_correct: Result = c_fun (item)
		end

	set_fun (a_value: POINTER) 
			-- Change the value of member `fun` to `a_value`.
		require
			exists: exists
		do
			set_c_fun (item, a_value)
		ensure
			fun_set: a_value = fun
		end

	user_data: POINTER
			-- Access member `user_data`
		require
			exists: exists
		do
			Result := c_user_data (item)
		ensure
			result_correct: Result = c_user_data (item)
		end

	set_user_data (a_value: POINTER) 
			-- Change the value of member `user_data` to `a_value`.
		require
			exists: exists
		do
			set_c_user_data (item, a_value)
		ensure
			user_data_set: a_value = user_data
		end

feature {NONE} -- Implementation wrapper for struct ffi_java_raw_closure

	sizeof_external: INTEGER 
		external
			"C inline use <ffi.h>"
		alias
			"sizeof(ffi_java_raw_closure)"
		end

	c_tramp (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->tramp
			]"
		end

	c_cif (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->cif
			]"
		end

	set_c_cif (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->cif =  (ffi_cif*)$a_value
			]"
		ensure
			cif_set: a_value = c_cif (an_item)
		end

	c_translate_args (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->translate_args
			]"
		end

	set_c_translate_args (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->translate_args =  (void (*) (ffi_cif *anonymous_1, void *anonymous_2, void **anonymous_3, void *anonymous_4))$a_value
			]"
		ensure
			translate_args_set: a_value = c_translate_args (an_item)
		end

	c_this_closure (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->this_closure
			]"
		end

	set_c_this_closure (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->this_closure =  (void*)$a_value
			]"
		ensure
			this_closure_set: a_value = c_this_closure (an_item)
		end

	c_fun (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->fun
			]"
		end

	set_c_fun (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->fun =  (void (*) (ffi_cif *anonymous_1, void *anonymous_2, ffi_java_raw *anonymous_3, void *anonymous_4))$a_value
			]"
		ensure
			fun_set: a_value = c_fun (an_item)
		end

	c_user_data (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->user_data
			]"
		end

	set_c_user_data (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_java_raw_closure*)$an_item)->user_data =  (void*)$a_value
			]"
		ensure
			user_data_set: a_value = c_user_data (an_item)
		end

end
