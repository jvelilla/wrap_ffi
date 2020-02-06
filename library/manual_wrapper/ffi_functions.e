note
	description: "Summary description for {FFI_FUNCTIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FFI_FUNCTIONS

inherit

	FFI_FUNCTIONS_API
		rename
--			ffi_prep_cif_core as ffi_prep_cif_core_api,
			ffi_prep_cif as ffi_prep_cif_api,
			ffi_call as ffi_call_api
		end

feature -- Access


--	ffi_prep_cif_core (cif: FFI_CIF_STRUCT_API; abi: INTEGER; isvariadic: INTEGER; nfixedargs: INTEGER; ntotalargs: INTEGER; rtype: FFI_TYPE_STRUCT_API; atypes: FFI_TYPE_STRUCT_API): INTEGER
--		local
--			l_ptr: POINTER
--		do
----			Result := c_ffi_prep_cif_core ($l_ptr, abi, isvariadic, nfixedargs, ntotalargs, rtype.item, atypes.item)
----			if l_ptr /= default_pointer then
----				cif.make_by_pointer (l_ptr)
----			end
--		end


	ffi_prep_cif (cif: FFI_CIF_STRUCT_API; abi: INTEGER; nargs: INTEGER; rtype: POINTER; atypes: ARRAY [POINTER]): INTEGER
		do
			Result := c_ffi_prep_cif (cif.item, abi, nargs, rtype, atypes.area.base_address)
		end


	ffi_call (cif: FFI_CIF_STRUCT_API; fn: POINTER; rvalue: POINTER; avalue: POINTER)
		do
			c_ffi_call (cif.item, fn, rvalue, avalue)
		end



end
