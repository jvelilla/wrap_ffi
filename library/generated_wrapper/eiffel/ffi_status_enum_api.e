-- enum wrapper
class FFI_STATUS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = ffi_ok or a_value = ffi_bad_typedef or a_value = ffi_bad_abi
		end

	ffi_ok: INTEGER 
		external
			"C inline use <ffi.h>"
		alias
			"FFI_OK"
		end

	ffi_bad_typedef: INTEGER 
		external
			"C inline use <ffi.h>"
		alias
			"FFI_BAD_TYPEDEF"
		end

	ffi_bad_abi: INTEGER 
		external
			"C inline use <ffi.h>"
		alias
			"FFI_BAD_ABI"
		end

end
