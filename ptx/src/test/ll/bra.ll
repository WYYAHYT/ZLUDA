define amdgpu_kernel void @bra(ptr addrspace(4) byref(i64) %"36", ptr addrspace(4) byref(i64) %"37") #0 {
  %"38" = alloca i64, align 8, addrspace(5)
  %"39" = alloca i64, align 8, addrspace(5)
  %"40" = alloca i64, align 8, addrspace(5)
  %"41" = alloca i64, align 8, addrspace(5)
  br label %1

1:                                                ; preds = %0
  br label %"35"

"35":                                             ; preds = %1
  %"42" = load i64, ptr addrspace(4) %"36", align 8
  store i64 %"42", ptr addrspace(5) %"38", align 8
  %"43" = load i64, ptr addrspace(4) %"37", align 8
  store i64 %"43", ptr addrspace(5) %"39", align 8
  %"45" = load i64, ptr addrspace(5) %"38", align 8
  %"50" = inttoptr i64 %"45" to ptr
  %"44" = load i64, ptr %"50", align 8
  store i64 %"44", ptr addrspace(5) %"40", align 8
  br label %"10"

"10":                                             ; preds = %"35"
  %"47" = load i64, ptr addrspace(5) %"40", align 8
  %"46" = add i64 %"47", 1
  store i64 %"46", ptr addrspace(5) %"41", align 8
  br label %"12"

"12":                                             ; preds = %"10"
  %"48" = load i64, ptr addrspace(5) %"39", align 8
  %"49" = load i64, ptr addrspace(5) %"41", align 8
  %"51" = inttoptr i64 %"48" to ptr
  store i64 %"49", ptr %"51", align 8
  ret void
}

attributes #0 = { "amdgpu-unsafe-fp-atomics"="true" "denormal-fp-math"="preserve-sign" "denormal-fp-math-f32"="preserve-sign" "no-trapping-math"="true" "uniform-work-group-size"="true" }
