// Note: This file has been automatically generated. Do not modify.

// Needed for fract()
#define POCL_FRACT_MIN_H 0x1.ffcp-1h
#define POCL_FRACT_MIN   0x1.fffffffffffffp-1
#define POCL_FRACT_MIN_F 0x1.fffffep-1f

// Choose a constant with a particular precision
#ifdef cl_khr_fp16
#  define IF_HALF(TYPE, VAL, OTHER) \
          (sizeof(TYPE)==sizeof(half) ? (TYPE)(VAL) : (TYPE)(OTHER))
#else
#  define IF_HALF(TYPE, VAL, OTHER) (OTHER)
#endif

#ifdef cl_khr_fp64
#  define IF_DOUBLE(TYPE, VAL, OTHER) \
          (sizeof(TYPE)==sizeof(double) ? (TYPE)(VAL) : (TYPE)(OTHER))
#else
#  define IF_DOUBLE(TYPE, VAL, OTHER) (OTHER)
#endif

#define TYPED_CONST(TYPE, HALF_VAL, SINGLE_VAL, DOUBLE_VAL) \
        IF_HALF(TYPE, HALF_VAL, IF_DOUBLE(TYPE, DOUBLE_VAL, SINGLE_VAL))



// fract: ['VF', 'PVF'] -> VF

#ifdef cl_khr_fp16

// fract: VF=globalhalf
// Implement fract directly
__attribute__((__overloadable__))
half _cl_fract(half x0, global half* x1)
{
  typedef short iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short ivector_t;
  typedef int jvector_t;
  typedef int kvector_t;
  typedef half vector_t;
#define convert_ivector_t convert_short
#define convert_jvector_t convert_int
#define convert_kvector_t convert_int
#define convert_vector_t convert_half
#define ilogb_ _cl_ilogb_half
#define ldexp_scalar_ _cl_ldexp_half_short
#define ldexp_vector_ _cl_ldexp_half_short
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localhalf
// Implement fract directly
__attribute__((__overloadable__))
half _cl_fract(half x0, local half* x1)
{
  typedef short iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short ivector_t;
  typedef int jvector_t;
  typedef int kvector_t;
  typedef half vector_t;
#define convert_ivector_t convert_short
#define convert_jvector_t convert_int
#define convert_kvector_t convert_int
#define convert_vector_t convert_half
#define ilogb_ _cl_ilogb_half
#define ldexp_scalar_ _cl_ldexp_half_short
#define ldexp_vector_ _cl_ldexp_half_short
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatehalf
// Implement fract directly
__attribute__((__overloadable__))
half _cl_fract(half x0, private half* x1)
{
  typedef short iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short ivector_t;
  typedef int jvector_t;
  typedef int kvector_t;
  typedef half vector_t;
#define convert_ivector_t convert_short
#define convert_jvector_t convert_int
#define convert_kvector_t convert_int
#define convert_vector_t convert_half
#define ilogb_ _cl_ilogb_half
#define ldexp_scalar_ _cl_ldexp_half_short
#define ldexp_vector_ _cl_ldexp_half_short
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalhalf2
// Implement fract directly
__attribute__((__overloadable__))
half2 _cl_fract(half2 x0, global half2* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short2 ivector_t;
  typedef short2 jvector_t;
  typedef int2 kvector_t;
  typedef half2 vector_t;
#define convert_ivector_t convert_short2
#define convert_jvector_t convert_short2
#define convert_kvector_t convert_int2
#define convert_vector_t convert_half2
#define ilogb_ _cl_ilogb_half2
#define ldexp_scalar_ _cl_ldexp_half2_short
#define ldexp_vector_ _cl_ldexp_half2_short2
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localhalf2
// Implement fract directly
__attribute__((__overloadable__))
half2 _cl_fract(half2 x0, local half2* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short2 ivector_t;
  typedef short2 jvector_t;
  typedef int2 kvector_t;
  typedef half2 vector_t;
#define convert_ivector_t convert_short2
#define convert_jvector_t convert_short2
#define convert_kvector_t convert_int2
#define convert_vector_t convert_half2
#define ilogb_ _cl_ilogb_half2
#define ldexp_scalar_ _cl_ldexp_half2_short
#define ldexp_vector_ _cl_ldexp_half2_short2
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatehalf2
// Implement fract directly
__attribute__((__overloadable__))
half2 _cl_fract(half2 x0, private half2* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short2 ivector_t;
  typedef short2 jvector_t;
  typedef int2 kvector_t;
  typedef half2 vector_t;
#define convert_ivector_t convert_short2
#define convert_jvector_t convert_short2
#define convert_kvector_t convert_int2
#define convert_vector_t convert_half2
#define ilogb_ _cl_ilogb_half2
#define ldexp_scalar_ _cl_ldexp_half2_short
#define ldexp_vector_ _cl_ldexp_half2_short2
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalhalf3
// Implement fract directly
__attribute__((__overloadable__))
half3 _cl_fract(half3 x0, global half3* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short3 ivector_t;
  typedef short3 jvector_t;
  typedef int3 kvector_t;
  typedef half3 vector_t;
#define convert_ivector_t convert_short3
#define convert_jvector_t convert_short3
#define convert_kvector_t convert_int3
#define convert_vector_t convert_half3
#define ilogb_ _cl_ilogb_half3
#define ldexp_scalar_ _cl_ldexp_half3_short
#define ldexp_vector_ _cl_ldexp_half3_short3
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localhalf3
// Implement fract directly
__attribute__((__overloadable__))
half3 _cl_fract(half3 x0, local half3* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short3 ivector_t;
  typedef short3 jvector_t;
  typedef int3 kvector_t;
  typedef half3 vector_t;
#define convert_ivector_t convert_short3
#define convert_jvector_t convert_short3
#define convert_kvector_t convert_int3
#define convert_vector_t convert_half3
#define ilogb_ _cl_ilogb_half3
#define ldexp_scalar_ _cl_ldexp_half3_short
#define ldexp_vector_ _cl_ldexp_half3_short3
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatehalf3
// Implement fract directly
__attribute__((__overloadable__))
half3 _cl_fract(half3 x0, private half3* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short3 ivector_t;
  typedef short3 jvector_t;
  typedef int3 kvector_t;
  typedef half3 vector_t;
#define convert_ivector_t convert_short3
#define convert_jvector_t convert_short3
#define convert_kvector_t convert_int3
#define convert_vector_t convert_half3
#define ilogb_ _cl_ilogb_half3
#define ldexp_scalar_ _cl_ldexp_half3_short
#define ldexp_vector_ _cl_ldexp_half3_short3
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalhalf4
// Implement fract directly
__attribute__((__overloadable__))
half4 _cl_fract(half4 x0, global half4* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short4 ivector_t;
  typedef short4 jvector_t;
  typedef int4 kvector_t;
  typedef half4 vector_t;
#define convert_ivector_t convert_short4
#define convert_jvector_t convert_short4
#define convert_kvector_t convert_int4
#define convert_vector_t convert_half4
#define ilogb_ _cl_ilogb_half4
#define ldexp_scalar_ _cl_ldexp_half4_short
#define ldexp_vector_ _cl_ldexp_half4_short4
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localhalf4
// Implement fract directly
__attribute__((__overloadable__))
half4 _cl_fract(half4 x0, local half4* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short4 ivector_t;
  typedef short4 jvector_t;
  typedef int4 kvector_t;
  typedef half4 vector_t;
#define convert_ivector_t convert_short4
#define convert_jvector_t convert_short4
#define convert_kvector_t convert_int4
#define convert_vector_t convert_half4
#define ilogb_ _cl_ilogb_half4
#define ldexp_scalar_ _cl_ldexp_half4_short
#define ldexp_vector_ _cl_ldexp_half4_short4
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatehalf4
// Implement fract directly
__attribute__((__overloadable__))
half4 _cl_fract(half4 x0, private half4* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short4 ivector_t;
  typedef short4 jvector_t;
  typedef int4 kvector_t;
  typedef half4 vector_t;
#define convert_ivector_t convert_short4
#define convert_jvector_t convert_short4
#define convert_kvector_t convert_int4
#define convert_vector_t convert_half4
#define ilogb_ _cl_ilogb_half4
#define ldexp_scalar_ _cl_ldexp_half4_short
#define ldexp_vector_ _cl_ldexp_half4_short4
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalhalf8
// Implement fract directly
__attribute__((__overloadable__))
half8 _cl_fract(half8 x0, global half8* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short8 ivector_t;
  typedef short8 jvector_t;
  typedef int8 kvector_t;
  typedef half8 vector_t;
#define convert_ivector_t convert_short8
#define convert_jvector_t convert_short8
#define convert_kvector_t convert_int8
#define convert_vector_t convert_half8
#define ilogb_ _cl_ilogb_half8
#define ldexp_scalar_ _cl_ldexp_half8_short
#define ldexp_vector_ _cl_ldexp_half8_short8
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localhalf8
// Implement fract directly
__attribute__((__overloadable__))
half8 _cl_fract(half8 x0, local half8* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short8 ivector_t;
  typedef short8 jvector_t;
  typedef int8 kvector_t;
  typedef half8 vector_t;
#define convert_ivector_t convert_short8
#define convert_jvector_t convert_short8
#define convert_kvector_t convert_int8
#define convert_vector_t convert_half8
#define ilogb_ _cl_ilogb_half8
#define ldexp_scalar_ _cl_ldexp_half8_short
#define ldexp_vector_ _cl_ldexp_half8_short8
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatehalf8
// Implement fract directly
__attribute__((__overloadable__))
half8 _cl_fract(half8 x0, private half8* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short8 ivector_t;
  typedef short8 jvector_t;
  typedef int8 kvector_t;
  typedef half8 vector_t;
#define convert_ivector_t convert_short8
#define convert_jvector_t convert_short8
#define convert_kvector_t convert_int8
#define convert_vector_t convert_half8
#define ilogb_ _cl_ilogb_half8
#define ldexp_scalar_ _cl_ldexp_half8_short
#define ldexp_vector_ _cl_ldexp_half8_short8
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalhalf16
// Implement fract directly
__attribute__((__overloadable__))
half16 _cl_fract(half16 x0, global half16* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short16 ivector_t;
  typedef short16 jvector_t;
  typedef int16 kvector_t;
  typedef half16 vector_t;
#define convert_ivector_t convert_short16
#define convert_jvector_t convert_short16
#define convert_kvector_t convert_int16
#define convert_vector_t convert_half16
#define ilogb_ _cl_ilogb_half16
#define ldexp_scalar_ _cl_ldexp_half16_short
#define ldexp_vector_ _cl_ldexp_half16_short16
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localhalf16
// Implement fract directly
__attribute__((__overloadable__))
half16 _cl_fract(half16 x0, local half16* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short16 ivector_t;
  typedef short16 jvector_t;
  typedef int16 kvector_t;
  typedef half16 vector_t;
#define convert_ivector_t convert_short16
#define convert_jvector_t convert_short16
#define convert_kvector_t convert_int16
#define convert_vector_t convert_half16
#define ilogb_ _cl_ilogb_half16
#define ldexp_scalar_ _cl_ldexp_half16_short
#define ldexp_vector_ _cl_ldexp_half16_short16
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatehalf16
// Implement fract directly
__attribute__((__overloadable__))
half16 _cl_fract(half16 x0, private half16* x1)
{
  typedef short iscalar_t;
  typedef short jscalar_t;
  typedef int kscalar_t;
  typedef half scalar_t;
  typedef short16 ivector_t;
  typedef short16 jvector_t;
  typedef int16 kvector_t;
  typedef half16 vector_t;
#define convert_ivector_t convert_short16
#define convert_jvector_t convert_short16
#define convert_kvector_t convert_int16
#define convert_vector_t convert_half16
#define ilogb_ _cl_ilogb_half16
#define ldexp_scalar_ _cl_ldexp_half16_short
#define ldexp_vector_ _cl_ldexp_half16_short16
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

#endif // #ifdef cl_khr_fp16

// fract: VF=globalfloat
// Implement fract directly
__attribute__((__overloadable__))
float _cl_fract(float x0, global float* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int ivector_t;
  typedef int jvector_t;
  typedef int kvector_t;
  typedef float vector_t;
#define convert_ivector_t convert_int
#define convert_jvector_t convert_int
#define convert_kvector_t convert_int
#define convert_vector_t convert_float
#define ilogb_ _cl_ilogb_float
#define ldexp_scalar_ _cl_ldexp_float_int
#define ldexp_vector_ _cl_ldexp_float_int
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localfloat
// Implement fract directly
__attribute__((__overloadable__))
float _cl_fract(float x0, local float* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int ivector_t;
  typedef int jvector_t;
  typedef int kvector_t;
  typedef float vector_t;
#define convert_ivector_t convert_int
#define convert_jvector_t convert_int
#define convert_kvector_t convert_int
#define convert_vector_t convert_float
#define ilogb_ _cl_ilogb_float
#define ldexp_scalar_ _cl_ldexp_float_int
#define ldexp_vector_ _cl_ldexp_float_int
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatefloat
// Implement fract directly
__attribute__((__overloadable__))
float _cl_fract(float x0, private float* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int ivector_t;
  typedef int jvector_t;
  typedef int kvector_t;
  typedef float vector_t;
#define convert_ivector_t convert_int
#define convert_jvector_t convert_int
#define convert_kvector_t convert_int
#define convert_vector_t convert_float
#define ilogb_ _cl_ilogb_float
#define ldexp_scalar_ _cl_ldexp_float_int
#define ldexp_vector_ _cl_ldexp_float_int
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalfloat2
// Implement fract directly
__attribute__((__overloadable__))
float2 _cl_fract(float2 x0, global float2* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int2 ivector_t;
  typedef int2 jvector_t;
  typedef int2 kvector_t;
  typedef float2 vector_t;
#define convert_ivector_t convert_int2
#define convert_jvector_t convert_int2
#define convert_kvector_t convert_int2
#define convert_vector_t convert_float2
#define ilogb_ _cl_ilogb_float2
#define ldexp_scalar_ _cl_ldexp_float2_int
#define ldexp_vector_ _cl_ldexp_float2_int2
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localfloat2
// Implement fract directly
__attribute__((__overloadable__))
float2 _cl_fract(float2 x0, local float2* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int2 ivector_t;
  typedef int2 jvector_t;
  typedef int2 kvector_t;
  typedef float2 vector_t;
#define convert_ivector_t convert_int2
#define convert_jvector_t convert_int2
#define convert_kvector_t convert_int2
#define convert_vector_t convert_float2
#define ilogb_ _cl_ilogb_float2
#define ldexp_scalar_ _cl_ldexp_float2_int
#define ldexp_vector_ _cl_ldexp_float2_int2
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatefloat2
// Implement fract directly
__attribute__((__overloadable__))
float2 _cl_fract(float2 x0, private float2* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int2 ivector_t;
  typedef int2 jvector_t;
  typedef int2 kvector_t;
  typedef float2 vector_t;
#define convert_ivector_t convert_int2
#define convert_jvector_t convert_int2
#define convert_kvector_t convert_int2
#define convert_vector_t convert_float2
#define ilogb_ _cl_ilogb_float2
#define ldexp_scalar_ _cl_ldexp_float2_int
#define ldexp_vector_ _cl_ldexp_float2_int2
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalfloat3
// Implement fract directly
__attribute__((__overloadable__))
float3 _cl_fract(float3 x0, global float3* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int3 ivector_t;
  typedef int3 jvector_t;
  typedef int3 kvector_t;
  typedef float3 vector_t;
#define convert_ivector_t convert_int3
#define convert_jvector_t convert_int3
#define convert_kvector_t convert_int3
#define convert_vector_t convert_float3
#define ilogb_ _cl_ilogb_float3
#define ldexp_scalar_ _cl_ldexp_float3_int
#define ldexp_vector_ _cl_ldexp_float3_int3
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localfloat3
// Implement fract directly
__attribute__((__overloadable__))
float3 _cl_fract(float3 x0, local float3* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int3 ivector_t;
  typedef int3 jvector_t;
  typedef int3 kvector_t;
  typedef float3 vector_t;
#define convert_ivector_t convert_int3
#define convert_jvector_t convert_int3
#define convert_kvector_t convert_int3
#define convert_vector_t convert_float3
#define ilogb_ _cl_ilogb_float3
#define ldexp_scalar_ _cl_ldexp_float3_int
#define ldexp_vector_ _cl_ldexp_float3_int3
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatefloat3
// Implement fract directly
__attribute__((__overloadable__))
float3 _cl_fract(float3 x0, private float3* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int3 ivector_t;
  typedef int3 jvector_t;
  typedef int3 kvector_t;
  typedef float3 vector_t;
#define convert_ivector_t convert_int3
#define convert_jvector_t convert_int3
#define convert_kvector_t convert_int3
#define convert_vector_t convert_float3
#define ilogb_ _cl_ilogb_float3
#define ldexp_scalar_ _cl_ldexp_float3_int
#define ldexp_vector_ _cl_ldexp_float3_int3
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalfloat4
// Implement fract directly
__attribute__((__overloadable__))
float4 _cl_fract(float4 x0, global float4* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int4 ivector_t;
  typedef int4 jvector_t;
  typedef int4 kvector_t;
  typedef float4 vector_t;
#define convert_ivector_t convert_int4
#define convert_jvector_t convert_int4
#define convert_kvector_t convert_int4
#define convert_vector_t convert_float4
#define ilogb_ _cl_ilogb_float4
#define ldexp_scalar_ _cl_ldexp_float4_int
#define ldexp_vector_ _cl_ldexp_float4_int4
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localfloat4
// Implement fract directly
__attribute__((__overloadable__))
float4 _cl_fract(float4 x0, local float4* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int4 ivector_t;
  typedef int4 jvector_t;
  typedef int4 kvector_t;
  typedef float4 vector_t;
#define convert_ivector_t convert_int4
#define convert_jvector_t convert_int4
#define convert_kvector_t convert_int4
#define convert_vector_t convert_float4
#define ilogb_ _cl_ilogb_float4
#define ldexp_scalar_ _cl_ldexp_float4_int
#define ldexp_vector_ _cl_ldexp_float4_int4
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatefloat4
// Implement fract directly
__attribute__((__overloadable__))
float4 _cl_fract(float4 x0, private float4* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int4 ivector_t;
  typedef int4 jvector_t;
  typedef int4 kvector_t;
  typedef float4 vector_t;
#define convert_ivector_t convert_int4
#define convert_jvector_t convert_int4
#define convert_kvector_t convert_int4
#define convert_vector_t convert_float4
#define ilogb_ _cl_ilogb_float4
#define ldexp_scalar_ _cl_ldexp_float4_int
#define ldexp_vector_ _cl_ldexp_float4_int4
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalfloat8
// Implement fract directly
__attribute__((__overloadable__))
float8 _cl_fract(float8 x0, global float8* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int8 ivector_t;
  typedef int8 jvector_t;
  typedef int8 kvector_t;
  typedef float8 vector_t;
#define convert_ivector_t convert_int8
#define convert_jvector_t convert_int8
#define convert_kvector_t convert_int8
#define convert_vector_t convert_float8
#define ilogb_ _cl_ilogb_float8
#define ldexp_scalar_ _cl_ldexp_float8_int
#define ldexp_vector_ _cl_ldexp_float8_int8
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localfloat8
// Implement fract directly
__attribute__((__overloadable__))
float8 _cl_fract(float8 x0, local float8* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int8 ivector_t;
  typedef int8 jvector_t;
  typedef int8 kvector_t;
  typedef float8 vector_t;
#define convert_ivector_t convert_int8
#define convert_jvector_t convert_int8
#define convert_kvector_t convert_int8
#define convert_vector_t convert_float8
#define ilogb_ _cl_ilogb_float8
#define ldexp_scalar_ _cl_ldexp_float8_int
#define ldexp_vector_ _cl_ldexp_float8_int8
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatefloat8
// Implement fract directly
__attribute__((__overloadable__))
float8 _cl_fract(float8 x0, private float8* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int8 ivector_t;
  typedef int8 jvector_t;
  typedef int8 kvector_t;
  typedef float8 vector_t;
#define convert_ivector_t convert_int8
#define convert_jvector_t convert_int8
#define convert_kvector_t convert_int8
#define convert_vector_t convert_float8
#define ilogb_ _cl_ilogb_float8
#define ldexp_scalar_ _cl_ldexp_float8_int
#define ldexp_vector_ _cl_ldexp_float8_int8
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globalfloat16
// Implement fract directly
__attribute__((__overloadable__))
float16 _cl_fract(float16 x0, global float16* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int16 ivector_t;
  typedef int16 jvector_t;
  typedef int16 kvector_t;
  typedef float16 vector_t;
#define convert_ivector_t convert_int16
#define convert_jvector_t convert_int16
#define convert_kvector_t convert_int16
#define convert_vector_t convert_float16
#define ilogb_ _cl_ilogb_float16
#define ldexp_scalar_ _cl_ldexp_float16_int
#define ldexp_vector_ _cl_ldexp_float16_int16
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localfloat16
// Implement fract directly
__attribute__((__overloadable__))
float16 _cl_fract(float16 x0, local float16* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int16 ivector_t;
  typedef int16 jvector_t;
  typedef int16 kvector_t;
  typedef float16 vector_t;
#define convert_ivector_t convert_int16
#define convert_jvector_t convert_int16
#define convert_kvector_t convert_int16
#define convert_vector_t convert_float16
#define ilogb_ _cl_ilogb_float16
#define ldexp_scalar_ _cl_ldexp_float16_int
#define ldexp_vector_ _cl_ldexp_float16_int16
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatefloat16
// Implement fract directly
__attribute__((__overloadable__))
float16 _cl_fract(float16 x0, private float16* x1)
{
  typedef int iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef float scalar_t;
  typedef int16 ivector_t;
  typedef int16 jvector_t;
  typedef int16 kvector_t;
  typedef float16 vector_t;
#define convert_ivector_t convert_int16
#define convert_jvector_t convert_int16
#define convert_kvector_t convert_int16
#define convert_vector_t convert_float16
#define ilogb_ _cl_ilogb_float16
#define ldexp_scalar_ _cl_ldexp_float16_int
#define ldexp_vector_ _cl_ldexp_float16_int16
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

#ifdef cl_khr_fp64

// fract: VF=globaldouble
// Implement fract directly
__attribute__((__overloadable__))
double _cl_fract(double x0, global double* x1)
{
  typedef long iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long ivector_t;
  typedef int jvector_t;
  typedef int kvector_t;
  typedef double vector_t;
#define convert_ivector_t convert_long
#define convert_jvector_t convert_int
#define convert_kvector_t convert_int
#define convert_vector_t convert_double
#define ilogb_ _cl_ilogb_double
#define ldexp_scalar_ _cl_ldexp_double_long
#define ldexp_vector_ _cl_ldexp_double_long
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localdouble
// Implement fract directly
__attribute__((__overloadable__))
double _cl_fract(double x0, local double* x1)
{
  typedef long iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long ivector_t;
  typedef int jvector_t;
  typedef int kvector_t;
  typedef double vector_t;
#define convert_ivector_t convert_long
#define convert_jvector_t convert_int
#define convert_kvector_t convert_int
#define convert_vector_t convert_double
#define ilogb_ _cl_ilogb_double
#define ldexp_scalar_ _cl_ldexp_double_long
#define ldexp_vector_ _cl_ldexp_double_long
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatedouble
// Implement fract directly
__attribute__((__overloadable__))
double _cl_fract(double x0, private double* x1)
{
  typedef long iscalar_t;
  typedef int jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long ivector_t;
  typedef int jvector_t;
  typedef int kvector_t;
  typedef double vector_t;
#define convert_ivector_t convert_long
#define convert_jvector_t convert_int
#define convert_kvector_t convert_int
#define convert_vector_t convert_double
#define ilogb_ _cl_ilogb_double
#define ldexp_scalar_ _cl_ldexp_double_long
#define ldexp_vector_ _cl_ldexp_double_long
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globaldouble2
// Implement fract directly
__attribute__((__overloadable__))
double2 _cl_fract(double2 x0, global double2* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long2 ivector_t;
  typedef long2 jvector_t;
  typedef int2 kvector_t;
  typedef double2 vector_t;
#define convert_ivector_t convert_long2
#define convert_jvector_t convert_long2
#define convert_kvector_t convert_int2
#define convert_vector_t convert_double2
#define ilogb_ _cl_ilogb_double2
#define ldexp_scalar_ _cl_ldexp_double2_long
#define ldexp_vector_ _cl_ldexp_double2_long2
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localdouble2
// Implement fract directly
__attribute__((__overloadable__))
double2 _cl_fract(double2 x0, local double2* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long2 ivector_t;
  typedef long2 jvector_t;
  typedef int2 kvector_t;
  typedef double2 vector_t;
#define convert_ivector_t convert_long2
#define convert_jvector_t convert_long2
#define convert_kvector_t convert_int2
#define convert_vector_t convert_double2
#define ilogb_ _cl_ilogb_double2
#define ldexp_scalar_ _cl_ldexp_double2_long
#define ldexp_vector_ _cl_ldexp_double2_long2
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatedouble2
// Implement fract directly
__attribute__((__overloadable__))
double2 _cl_fract(double2 x0, private double2* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long2 ivector_t;
  typedef long2 jvector_t;
  typedef int2 kvector_t;
  typedef double2 vector_t;
#define convert_ivector_t convert_long2
#define convert_jvector_t convert_long2
#define convert_kvector_t convert_int2
#define convert_vector_t convert_double2
#define ilogb_ _cl_ilogb_double2
#define ldexp_scalar_ _cl_ldexp_double2_long
#define ldexp_vector_ _cl_ldexp_double2_long2
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globaldouble3
// Implement fract directly
__attribute__((__overloadable__))
double3 _cl_fract(double3 x0, global double3* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long3 ivector_t;
  typedef long3 jvector_t;
  typedef int3 kvector_t;
  typedef double3 vector_t;
#define convert_ivector_t convert_long3
#define convert_jvector_t convert_long3
#define convert_kvector_t convert_int3
#define convert_vector_t convert_double3
#define ilogb_ _cl_ilogb_double3
#define ldexp_scalar_ _cl_ldexp_double3_long
#define ldexp_vector_ _cl_ldexp_double3_long3
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localdouble3
// Implement fract directly
__attribute__((__overloadable__))
double3 _cl_fract(double3 x0, local double3* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long3 ivector_t;
  typedef long3 jvector_t;
  typedef int3 kvector_t;
  typedef double3 vector_t;
#define convert_ivector_t convert_long3
#define convert_jvector_t convert_long3
#define convert_kvector_t convert_int3
#define convert_vector_t convert_double3
#define ilogb_ _cl_ilogb_double3
#define ldexp_scalar_ _cl_ldexp_double3_long
#define ldexp_vector_ _cl_ldexp_double3_long3
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatedouble3
// Implement fract directly
__attribute__((__overloadable__))
double3 _cl_fract(double3 x0, private double3* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long3 ivector_t;
  typedef long3 jvector_t;
  typedef int3 kvector_t;
  typedef double3 vector_t;
#define convert_ivector_t convert_long3
#define convert_jvector_t convert_long3
#define convert_kvector_t convert_int3
#define convert_vector_t convert_double3
#define ilogb_ _cl_ilogb_double3
#define ldexp_scalar_ _cl_ldexp_double3_long
#define ldexp_vector_ _cl_ldexp_double3_long3
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globaldouble4
// Implement fract directly
__attribute__((__overloadable__))
double4 _cl_fract(double4 x0, global double4* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long4 ivector_t;
  typedef long4 jvector_t;
  typedef int4 kvector_t;
  typedef double4 vector_t;
#define convert_ivector_t convert_long4
#define convert_jvector_t convert_long4
#define convert_kvector_t convert_int4
#define convert_vector_t convert_double4
#define ilogb_ _cl_ilogb_double4
#define ldexp_scalar_ _cl_ldexp_double4_long
#define ldexp_vector_ _cl_ldexp_double4_long4
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localdouble4
// Implement fract directly
__attribute__((__overloadable__))
double4 _cl_fract(double4 x0, local double4* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long4 ivector_t;
  typedef long4 jvector_t;
  typedef int4 kvector_t;
  typedef double4 vector_t;
#define convert_ivector_t convert_long4
#define convert_jvector_t convert_long4
#define convert_kvector_t convert_int4
#define convert_vector_t convert_double4
#define ilogb_ _cl_ilogb_double4
#define ldexp_scalar_ _cl_ldexp_double4_long
#define ldexp_vector_ _cl_ldexp_double4_long4
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatedouble4
// Implement fract directly
__attribute__((__overloadable__))
double4 _cl_fract(double4 x0, private double4* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long4 ivector_t;
  typedef long4 jvector_t;
  typedef int4 kvector_t;
  typedef double4 vector_t;
#define convert_ivector_t convert_long4
#define convert_jvector_t convert_long4
#define convert_kvector_t convert_int4
#define convert_vector_t convert_double4
#define ilogb_ _cl_ilogb_double4
#define ldexp_scalar_ _cl_ldexp_double4_long
#define ldexp_vector_ _cl_ldexp_double4_long4
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globaldouble8
// Implement fract directly
__attribute__((__overloadable__))
double8 _cl_fract(double8 x0, global double8* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long8 ivector_t;
  typedef long8 jvector_t;
  typedef int8 kvector_t;
  typedef double8 vector_t;
#define convert_ivector_t convert_long8
#define convert_jvector_t convert_long8
#define convert_kvector_t convert_int8
#define convert_vector_t convert_double8
#define ilogb_ _cl_ilogb_double8
#define ldexp_scalar_ _cl_ldexp_double8_long
#define ldexp_vector_ _cl_ldexp_double8_long8
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localdouble8
// Implement fract directly
__attribute__((__overloadable__))
double8 _cl_fract(double8 x0, local double8* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long8 ivector_t;
  typedef long8 jvector_t;
  typedef int8 kvector_t;
  typedef double8 vector_t;
#define convert_ivector_t convert_long8
#define convert_jvector_t convert_long8
#define convert_kvector_t convert_int8
#define convert_vector_t convert_double8
#define ilogb_ _cl_ilogb_double8
#define ldexp_scalar_ _cl_ldexp_double8_long
#define ldexp_vector_ _cl_ldexp_double8_long8
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatedouble8
// Implement fract directly
__attribute__((__overloadable__))
double8 _cl_fract(double8 x0, private double8* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long8 ivector_t;
  typedef long8 jvector_t;
  typedef int8 kvector_t;
  typedef double8 vector_t;
#define convert_ivector_t convert_long8
#define convert_jvector_t convert_long8
#define convert_kvector_t convert_int8
#define convert_vector_t convert_double8
#define ilogb_ _cl_ilogb_double8
#define ldexp_scalar_ _cl_ldexp_double8_long
#define ldexp_vector_ _cl_ldexp_double8_long8
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=globaldouble16
// Implement fract directly
__attribute__((__overloadable__))
double16 _cl_fract(double16 x0, global double16* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long16 ivector_t;
  typedef long16 jvector_t;
  typedef int16 kvector_t;
  typedef double16 vector_t;
#define convert_ivector_t convert_long16
#define convert_jvector_t convert_long16
#define convert_kvector_t convert_int16
#define convert_vector_t convert_double16
#define ilogb_ _cl_ilogb_double16
#define ldexp_scalar_ _cl_ldexp_double16_long
#define ldexp_vector_ _cl_ldexp_double16_long16
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=localdouble16
// Implement fract directly
__attribute__((__overloadable__))
double16 _cl_fract(double16 x0, local double16* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long16 ivector_t;
  typedef long16 jvector_t;
  typedef int16 kvector_t;
  typedef double16 vector_t;
#define convert_ivector_t convert_long16
#define convert_jvector_t convert_long16
#define convert_kvector_t convert_int16
#define convert_vector_t convert_double16
#define ilogb_ _cl_ilogb_double16
#define ldexp_scalar_ _cl_ldexp_double16_long
#define ldexp_vector_ _cl_ldexp_double16_long16
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

// fract: VF=privatedouble16
// Implement fract directly
__attribute__((__overloadable__))
double16 _cl_fract(double16 x0, private double16* x1)
{
  typedef long iscalar_t;
  typedef long jscalar_t;
  typedef int kscalar_t;
  typedef double scalar_t;
  typedef long16 ivector_t;
  typedef long16 jvector_t;
  typedef int16 kvector_t;
  typedef double16 vector_t;
#define convert_ivector_t convert_long16
#define convert_jvector_t convert_long16
#define convert_kvector_t convert_int16
#define convert_vector_t convert_double16
#define ilogb_ _cl_ilogb_double16
#define ldexp_scalar_ _cl_ldexp_double16_long
#define ldexp_vector_ _cl_ldexp_double16_long16
  return 
    ({
      *x1=floor(x0);
      scalar_t fract_min =
        TYPED_CONST(scalar_t, POCL_FRACT_MIN_H, POCL_FRACT_MIN_F, POCL_FRACT_MIN);
      fmin(x0-floor(x0), fract_min);
    })
;
#undef convert_ivector_t
#undef convert_jvector_t
#undef convert_kvector_t
#undef convert_vector_t
#undef ilogb_
#undef ldexp_scalar_
#undef ldexp_vector_
}

#endif // #ifdef cl_khr_fp64
