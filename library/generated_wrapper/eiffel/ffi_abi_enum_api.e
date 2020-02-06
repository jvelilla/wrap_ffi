-- enum wrapper
class FFI_ABI_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = ffi_first_abi or a_value = ffi_win64 or a_value = ffi_last_abi or a_value = ffi_default_abi
		end

	ffi_first_abi: INTEGER 
		external
			"C inline use <ffi.h>"
		alias
			"FFI_FIRST_ABI"
		end

	ffi_win64: INTEGER 
		external
			"C inline use <ffi.h>"
		alias
			"FFI_WIN64"
		end

	ffi_last_abi: INTEGER 
		external
			"C inline use <ffi.h>"
		alias
			"FFI_LAST_ABI"
		end

	ffi_default_abi: INTEGER 
		external
			"C inline use <ffi.h>"
		alias
			"FFI_DEFAULT_ABI"
		end

end
