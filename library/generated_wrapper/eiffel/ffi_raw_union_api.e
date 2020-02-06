note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class FFI_RAW_UNION_API

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

	sint: INTEGER 
			-- Access member `sint`
		require
			exists: exists
		do
			Result := c_sint (item)
		ensure
			result_correct: Result = c_sint (item)		end

	set_sint (a_value: INTEGER) 
			-- Change the value of member `sint` to `a_value`.
		require
			exists: exists
		do
			set_c_sint (item, a_value)
		ensure
			sint_set: a_value = c_sint(item)
		end

	uint: INTEGER 
			-- Access member `uint`
		require
			exists: exists
		do
			Result := c_uint (item)
		ensure
			result_correct: Result = c_uint (item)		end

	set_uint (a_value: INTEGER) 
			-- Change the value of member `uint` to `a_value`.
		require
			exists: exists
		do
			set_c_uint (item, a_value)
		ensure
			uint_set: a_value = c_uint(item)
		end

	flt: REAL 
			-- Access member `flt`
		require
			exists: exists
		do
			Result := c_flt (item)
		ensure
			result_correct: Result = c_flt (item)		end

	set_flt (a_value: REAL) 
			-- Change the value of member `flt` to `a_value`.
		require
			exists: exists
		do
			set_c_flt (item, a_value)
		ensure
			flt_set: a_value = c_flt(item)
		end

	data: POINTER 
			-- Access member `data`
		require
			exists: exists
		do
			Result := c_data (item)
		ensure
			result_correct: Result = c_data (item)		end

	ptr: POINTER 
			-- Access member `ptr`
		require
			exists: exists
		do
			Result := c_ptr (item)
		ensure
			result_correct: Result = c_ptr (item)		end

	set_ptr (a_value: POINTER) 
			-- Change the value of member `ptr` to `a_value`.
		require
			exists: exists
		do
			set_c_ptr (item, a_value)
		ensure
			ptr_set: a_value = c_ptr(item)
		end

feature {NONE} --C Implementation: ffi_raw

	sizeof_external: INTEGER 
		external
			"C inline use <ffi.h>"
		alias
			"sizeof(ffi_raw)"
		end

	c_sint (an_item: POINTER): INTEGER 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_raw*)$an_item)->sint
			]"
		end

	set_c_sint (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_raw*)$an_item)->sint =  (ffi_sarg)$a_value;
			]"
		end

	c_uint (an_item: POINTER): INTEGER 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_raw*)$an_item)->uint
			]"
		end

	set_c_uint (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_raw*)$an_item)->uint =  (ffi_arg)$a_value;
			]"
		end

	c_flt (an_item: POINTER): REAL 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_raw*)$an_item)->flt
			]"
		end

	set_c_flt (an_item: POINTER; a_value: REAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_raw*)$an_item)->flt =  (float)$a_value;
			]"
		end

	c_data (an_item: POINTER): POINTER 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_raw*)$an_item)->data
			]"
		end

	c_ptr (an_item: POINTER): POINTER 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_raw*)$an_item)->ptr
			]"
		end

	set_c_ptr (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <ffi.h>"
		alias
			"[
				((ffi_raw*)$an_item)->ptr =  (void*)$a_value;
			]"
		end


end
