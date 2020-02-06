note
	description: "Summary description for {FFI_TYPES}."
	date: "$Date$"
	revision: "$Revision$"

class
	FFI_TYPES


feature -- Access

	ffi_type_void: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_void
			]"
		end

	ffi_type_uint8: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_uint8
			]"
		end

	ffi_type_sint8: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_sint8
			]"
		end

	ffi_type_uint16: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_uint16
			]"
		end

	ffi_type_sint16: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_sint16
			]"
		end

	ffi_type_uint32: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_uint32
			]"
		end

	ffi_type_sint32: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_sint32
			]"
		end

	ffi_type_uint64: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_uint64
			]"
		end

	ffi_type_sint64: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_sint64
			]"
		end

	ffi_type_float: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_float
			]"
		end

	ffi_type_double: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_double
			]"
		end

	ffi_type_pointer: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_pointer
			]"
		end

	ffi_type_uint: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_uint
			]"
		end

	ffi_type_sint: POINTER
		external
			"C inline use <ffi.h>"
		alias
			"[
				&ffi_type_sint
			]"
		end

end
