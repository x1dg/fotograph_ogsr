///////////////////////////////////////////////////////////////////
//   Options for Float32
//   
//   Change the values here to adjust Float32
//   Values are defined as macros, and descriptions of thier
//   functions can be found above them.
//   If the value contains an "h" or "f" be sure and leave those!
//
//   Examples...
//
//   1.f 
//   1.0f
//   1.25f
//   If you change the value to a whole number, it needs to be #.f
///////////////////////////////////////////////////////////////////


//Cook-Torrance intensity values

//CT sun
#define CT_int  1.25f

//CT indoors
#define CT_int_in   1.25f

//Bloom brightness - Increases HDR brightness of the sky
#define BLOOM_val 0.6h

//HDR cutoff - Total HDR brightness
#define HDR_int  9.h

//RADEON COMPATIBILITY MODE - For those who can not use Fetch4 or have issues!
// To turn this mode on, remove the comment brackets "ex. // ".
// If you need to ue NO_F4 then you need to comment out YES_F4 below!!!!

// #define NO_F4




